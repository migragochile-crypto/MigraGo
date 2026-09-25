import { HERRAMIENTAS_LIST, PAISES } from '@/lib/content/silos'
import type { SearchArticle } from '@/lib/supabase/queries'

const STOP_WORDS = new Set([
  'a', 'al', 'como', 'con', 'de', 'del', 'el', 'en', 'es', 'la', 'las', 'lo', 'los',
  'abrir', 'hacer', 'mi', 'necesito', 'para', 'por', 'puedo', 'que', 'quiero', 'se', 'sin',
  'su', 'tengo', 'un', 'una', 'y',
])

function normalize(value: string) {
  return value
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, ' ')
    .replace(/\s+/g, ' ')
    .trim()
}

function tokens(value: string) {
  return normalize(value)
    .split(' ')
    .filter((token) => token.length > 1 && !STOP_WORDS.has(token))
}

export function articleHref(article: Pick<SearchArticle, 'slug' | 'silo'>) {
  return article.silo in PAISES ? `/paises/${article.slug}` : `/${article.slug}`
}

export function searchArticles(articles: SearchArticle[], query: string, limit = 24) {
  const normalizedQuery = normalize(query)
  const queryTokens = tokens(query)

  if (normalizedQuery.length < 2 || queryTokens.length === 0) return []

  return articles
    .map((article) => {
      const title = normalize(article.h1 || article.title)
      const keyword = normalize(article.keyword_primary ?? '')
      const description = normalize(article.meta_description)
      const slug = normalize(article.slug.replaceAll('/', ' ').replaceAll('-', ' '))

      let score = 0
      let matchedTokens = 0
      if (title.includes(normalizedQuery)) score += 80
      if (keyword.includes(normalizedQuery)) score += 55
      if (slug.includes(normalizedQuery)) score += 35
      if (description.includes(normalizedQuery)) score += 25

      for (const token of queryTokens) {
        const tokenMatches = title.includes(token) || keyword.includes(token) || slug.includes(token) || description.includes(token)
        if (tokenMatches) matchedTokens += 1
        if (title.includes(token)) score += 16
        if (keyword.includes(token)) score += 11
        if (slug.includes(token)) score += 8
        if (description.includes(token)) score += 4
      }

      return { article, score, matchedTokens }
    })
    .filter(({ score, matchedTokens }) =>
      score > 0 && matchedTokens >= Math.min(2, queryTokens.length)
    )
    .sort((a, b) => b.score - a.score || a.article.h1.localeCompare(b.article.h1, 'es'))
    .slice(0, limit)
    .map(({ article }) => article)
}

const TOOL_DESCRIPTIONS: Record<string, string> = {
  'calculadora-elegibilidad': 'Identifica qué categorías migratorias conviene revisar según tu situación.',
  'simulador-plazos': 'Estima fechas y organiza los plazos importantes de tu trámite.',
  'checklist-permanencia-definitiva': 'Prepara y marca los documentos para Residencia Definitiva.',
  'checklist-temporaria': 'Organiza los documentos para una solicitud de Residencia Temporal.',
  'consultar-estado': 'Encuentra los canales oficiales para revisar el estado de tu solicitud.',
  'calculadora-multas': 'Obtén una estimación orientativa por un permiso vencido.',
  'matriz-visas': 'Compara alternativas de residencia y sus requisitos generales.',
}

export function searchTools(query: string) {
  const queryTokens = tokens(query)
  if (queryTokens.length === 0) return []

  return HERRAMIENTAS_LIST
    .map((tool) => {
      const text = normalize(`${tool.label} ${TOOL_DESCRIPTIONS[tool.slug] ?? ''}`)
      const matchedTokens = queryTokens.filter((token) => text.includes(token)).length
      return {
        ...tool,
        description: TOOL_DESCRIPTIONS[tool.slug] ?? 'Herramienta gratuita de MigraGo.',
        matchedTokens,
      }
    })
    .filter((tool) => tool.matchedTokens >= Math.min(2, queryTokens.length))
    .sort((a, b) => b.matchedTokens - a.matchedTokens || a.label.localeCompare(b.label, 'es'))
}
