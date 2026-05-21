import { createClient } from '@supabase/supabase-js'

const url = process.env.NEXT_PUBLIC_SUPABASE_URL
const key = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

if (!url || !key) {
  console.error('Error: NEXT_PUBLIC_SUPABASE_URL y NEXT_PUBLIC_SUPABASE_ANON_KEY son requeridos')
  process.exit(1)
}

const supabase = createClient(url, key)

async function listArticles() {
  const { data, error } = await supabase
    .from('articles')
    .select('slug, title, h1, silo, type, is_published, published_at, updated_at')
    .order('created_at', { ascending: true })

  if (error) {
    console.error('Error al consultar artículos:', error)
    process.exit(1)
  }

  console.log(`\nTotal de artículos: ${data.length}\n`)
  console.log('='.repeat(120))
  console.log('Slug'.padEnd(50) + 'Tipo'.padEnd(15) + 'Silo'.padEnd(25) + 'Publicado')
  console.log('='.repeat(120))

  data.forEach((article) => {
    const status = article.is_published ? '✓' : '✗'
    console.log(
      article.slug.padEnd(50) +
        article.type.padEnd(15) +
        article.silo.padEnd(25) +
        status
    )
  })

  console.log('='.repeat(120))
  
  // Resumen por silo
  console.log('\nResumen por silo:\n')
  const bySilo = data.reduce((acc, article) => {
    acc[article.silo] = (acc[article.silo] || 0) + 1
    return acc
  }, {} as Record<string, number>)
  
  Object.entries(bySilo).forEach(([silo, count]) => {
    console.log(`${silo}: ${count} artículos`)
  })
}

listArticles()

