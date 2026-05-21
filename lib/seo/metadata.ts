import type { Metadata } from 'next'
import type { Article } from '@/types/content'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'
const SITE_NAME = 'MigraGo'

export function buildMetadata(opts: {
  title: string
  description: string
  slug: string
  noIndex?: boolean
}): Metadata {
  const url = `${SITE_URL}/${opts.slug}`
  const imageUrl = `${SITE_URL}/og-default.png`

  return {
    title: `${opts.title} | ${SITE_NAME}`,
    description: opts.description,
    alternates: { canonical: url },
    openGraph: {
      title: opts.title,
      description: opts.description,
      url,
      siteName: SITE_NAME,
      locale: 'es_CL',
      type: 'website',
      images: [
        {
          url: imageUrl,
          width: 1200,
          height: 630,
          alt: opts.title,
        },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title: opts.title,
      description: opts.description,
      images: [imageUrl],
    },
    robots: opts.noIndex ? { index: false, follow: false } : undefined,
  }
}

export function articleMetadata(article: Article): Metadata {
  const url = `${SITE_URL}/${article.slug}`
  let canonicalUrl = url

  if (article.canonical && article.canonical.trim().length > 0) {
    canonicalUrl = article.canonical.startsWith('http')
      ? article.canonical
      : `${SITE_URL}${article.canonical.startsWith('/') ? '' : '/'}${article.canonical}`
  }

  // Imagen dinámica basada en el tipo de contenido
  const imageUrl = `${SITE_URL}/og-${article.type}.png`

  return {
    title: `${article.title} | ${SITE_NAME}`,
    description: article.meta_description,
    alternates: { canonical: canonicalUrl },
    openGraph: {
      title: article.title,
      description: article.meta_description,
      url,
      siteName: SITE_NAME,
      locale: 'es_CL',
      type: 'article',
      publishedTime: article.published_at ?? undefined,
      modifiedTime: article.updated_at,
      authors: [article.author],
      images: [
        {
          url: imageUrl,
          width: 1200,
          height: 630,
          alt: article.title,
        },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title: article.title,
      description: article.meta_description,
      images: [imageUrl],
    },
  }
}

