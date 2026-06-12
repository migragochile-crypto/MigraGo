import { createClient } from '@supabase/supabase-js'
import { unstable_cache } from 'next/cache'
import type { Article, GlossaryTerm } from '@/types/content'

function getSupabase() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL
  const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
  if (!url || !key) return null
  return createClient(url, key)
}

export async function getArticleBySlug(slug: string): Promise<Article | null> {
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return null

      const { data, error } = await supabase
        .from('articles')
        .select('*')
        .eq('slug', slug)
        .eq('is_published', true)
        .single()

      if (error) return null
      return data as Article
    },
    [`article-${slug}`],
    { revalidate: 86400, tags: [`article-${slug}`] }
  )()
}

export async function getArticlesBySilo(
  silo: string
): Promise<Pick<Article, 'id' | 'slug' | 'title' | 'h1' | 'type'>[]> {
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return []

      const { data } = await supabase
        .from('articles')
        .select('id, slug, title, h1, type')
        .eq('silo', silo)
        .eq('is_published', true)
        .order('created_at', { ascending: true })

      return (data ?? []) as Pick<Article, 'id' | 'slug' | 'title' | 'h1' | 'type'>[]
    },
    [`silo-${silo}`],
    { revalidate: 86400, tags: [`silo-${silo}`] }
  )()
}

export async function getRelatedArticles(
  slugs: string[]
): Promise<Pick<Article, 'id' | 'slug' | 'title' | 'h1' | 'meta_description' | 'silo' | 'type'>[]> {
  if (slugs.length === 0) return []
  
  const cacheKey = `related-${slugs.sort().join('-')}`
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return []

      const { data } = await supabase
        .from('articles')
        .select('id, slug, title, h1, meta_description, silo, type')
        .in('slug', slugs)
        .eq('is_published', true)

      return (data ?? []) as Pick<
        Article,
        'id' | 'slug' | 'title' | 'h1' | 'meta_description' | 'silo' | 'type'
      >[]
    },
    [cacheKey],
    { revalidate: 86400, tags: [cacheKey] }
  )()
}

export async function getPublishedClustersBySilo(silo: string): Promise<string[]> {
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return []

      const { data } = await supabase
        .from('articles')
        .select('slug')
        .eq('silo', silo)
        .eq('type', 'cluster')
        .eq('is_published', true)

      return (data ?? []).map(({ slug }: { slug: string }) => slug.split('/')[1])
    },
    [`clusters-${silo}`],
    { revalidate: 86400, tags: [`silo-${silo}`] }
  )()
}

export async function getPublishedSlugs(type: 'hub'): Promise<string[]> {
  const supabase = getSupabase()
  if (!supabase) return []

  const { data } = await supabase
    .from('articles')
    .select('slug')
    .eq('type', type)
    .eq('is_published', true)

  return (data ?? []).map(({ slug }: { slug: string }) => slug)
}

export async function getAllPublishedArticles(): Promise<
  Pick<Article, 'slug' | 'silo' | 'type' | 'updated_at' | 'country_tags'>[]
> {
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return []

      const { data } = await supabase
        .from('articles')
        .select('slug, silo, type, updated_at, country_tags')
        .eq('is_published', true)

      return (data ?? []) as Pick<
        Article,
        'slug' | 'silo' | 'type' | 'updated_at' | 'country_tags'
      >[]
    },
    ['all-published-articles'],
    { revalidate: 21600, tags: ['all-published-articles'] }
  )()
}

export async function getNewsArticles(): Promise<
  Pick<Article, 'slug' | 'title' | 'h1' | 'meta_description' | 'published_at' | 'updated_at'>[]
> {
  return unstable_cache(
    async () => {
      const supabase = getSupabase()
      if (!supabase) return []

      const { data } = await supabase
        .from('articles')
        .select('slug, title, h1, meta_description, published_at, updated_at')
        .eq('silo', 'actualidad')
        .eq('is_published', true)
        .order('published_at', { ascending: false })

      return (data ?? []) as Pick<
        Article,
        'slug' | 'title' | 'h1' | 'meta_description' | 'published_at' | 'updated_at'
      >[]
    },
    ['news-articles'],
    { revalidate: 21600, tags: ['silo-actualidad'] }
  )()
}

export async function getGlossaryTerm(slug: string): Promise<GlossaryTerm | null> {
  const supabase = getSupabase()
  if (!supabase) return null

  const { data } = await supabase
    .from('glossary_terms')
    .select('*')
    .eq('slug', slug)
    .single()

  return data as GlossaryTerm | null
}

export async function getAllGlossaryTerms(): Promise<GlossaryTerm[]> {
  const supabase = getSupabase()
  if (!supabase) return []

  const { data } = await supabase
    .from('glossary_terms')
    .select('*')
    .order('term', { ascending: true })

  return (data ?? []) as GlossaryTerm[]
}

export async function getArticleWithRelated(
  slug: string
): Promise<{ article: Article | null; related: Pick<Article, 'id' | 'slug' | 'title' | 'h1' | 'meta_description' | 'silo' | 'type'>[] }> {
  const supabase = getSupabase()
  if (!supabase) return { article: null, related: [] }

  // Obtener artículo principal
  const { data: article, error: articleError } = await supabase
    .from('articles')
    .select('*')
    .eq('slug', slug)
    .eq('is_published', true)
    .single()

  if (articleError || !article) return { article: null, related: [] }

  // Obtener artículos relacionados en una sola query
  let related: Pick<Article, 'id' | 'slug' | 'title' | 'h1' | 'meta_description' | 'silo' | 'type'>[] = []
  if (article.related_slugs && article.related_slugs.length > 0) {
    const { data: relatedData } = await supabase
      .from('articles')
      .select('id, slug, title, h1, meta_description, silo, type')
      .in('slug', article.related_slugs.filter((s: string) => s !== slug))
      .eq('is_published', true)

    related = (relatedData ?? []) as Pick<
      Article,
      'id' | 'slug' | 'title' | 'h1' | 'meta_description' | 'silo' | 'type'
    >[]
  }

  return { article: article as Article, related }
}

