import type { Article, FaqItem, HowToStep } from '@/types/content'

const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://migrago.cl'
const ORG_NAME = 'MigraGo'

export function organizationSchema() {
  return {
    '@context': 'https://schema.org',
    '@type': 'Organization',
    name: ORG_NAME,
    url: SITE_URL,
    logo: `${SITE_URL}/logo.png`,
  }
}

export function webSiteSchema() {
  return {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: ORG_NAME,
    url: SITE_URL,
    potentialAction: {
      '@type': 'SearchAction',
      target: {
        '@type': 'EntryPoint',
        urlTemplate: `${SITE_URL}/glosario?q={search_term_string}`,
      },
      'query-input': 'required name=search_term_string',
    },
  }
}

export function articleSchema(article: Article) {
  const canonical = article.canonical?.trim()
  const url = canonical
    ? canonical.startsWith('http') ? canonical : `${SITE_URL}${canonical.startsWith('/') ? '' : '/'}${canonical}`
    : `${SITE_URL}/${article.slug}`

  return {
    '@context': 'https://schema.org',
    '@type': 'Article',
    headline: article.h1,
    description: article.meta_description,
    url,
    datePublished: article.published_at ?? article.created_at,
    dateModified: article.updated_at,
    author: { '@type': 'Organization', name: ORG_NAME },
    publisher: {
      '@type': 'Organization',
      name: ORG_NAME,
      logo: { '@type': 'ImageObject', url: `${SITE_URL}/logo.png` },
    },
  }
}

export function faqSchema(items: FaqItem[]) {
  return {
    '@context': 'https://schema.org',
    '@type': 'FAQPage',
    mainEntity: items.map(({ question, answer }) => ({
      '@type': 'Question',
      name: question,
      acceptedAnswer: { '@type': 'Answer', text: answer },
    })),
  }
}

export function howToSchema(title: string, steps: HowToStep[]) {
  return {
    '@context': 'https://schema.org',
    '@type': 'HowTo',
    name: title,
    step: steps.map(({ name, text }, index) => ({
      '@type': 'HowToStep',
      position: index + 1,
      name,
      text,
    })),
  }
}

export function breadcrumbSchema(items: { name: string; url: string }[]) {
  return {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    itemListElement: items.map(({ name, url }, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      name,
      item: url,
    })),
  }
}

export function softwareApplicationSchema(opts: {
  name: string
  description: string
  url: string
  applicationCategory?: string
  operatingSystem?: string
}) {
  return {
    '@context': 'https://schema.org',
    '@type': 'SoftwareApplication',
    name: opts.name,
    description: opts.description,
    url: opts.url,
    applicationCategory: opts.applicationCategory || 'UtilitiesApplication',
    operatingSystem: opts.operatingSystem || 'Web',
    offers: {
      '@type': 'Offer',
      price: '0',
      priceCurrency: 'CLP',
    },
    author: { '@type': 'Organization', name: ORG_NAME },
    publisher: {
      '@type': 'Organization',
      name: ORG_NAME,
      logo: { '@type': 'ImageObject', url: `${SITE_URL}/logo.png` },
    },
  }
}

