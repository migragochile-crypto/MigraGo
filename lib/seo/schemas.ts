import type { Article, FaqItem, HowToStep } from '@/types/content'
import { SITE_URL, SITE_NAME as ORG_NAME, ORGANIZATION_SAME_AS } from '@/lib/constants'


export function organizationSchema() {
  const schema: Record<string, unknown> = {
    '@context': 'https://schema.org',
    '@type': 'Organization',
    name: ORG_NAME,
    url: SITE_URL,
    logo: {
      '@type': 'ImageObject',
      url: `${SITE_URL}/logo.png`,
      width: 200,
      height: 60,
    },
    description:
      'Guía independiente sobre inmigración y trámites migratorios en Chile. Información clara y actualizada sobre Residencia Temporal, Residencia Definitiva, autodenuncia y vida cotidiana en Chile.',
    areaServed: {
      '@type': 'Country',
      name: 'Chile',
    },
    knowsAbout: [
      'Residencia Temporal Chile',
      'Residencia Definitiva Chile',
      'Autodenuncia migratoria PDI',
      'Nacionalización chilena',
      'Trámites migratorios SERMIG',
      'Visa para Chile',
    ],
    inLanguage: 'es-CL',
  }

  if (ORGANIZATION_SAME_AS.length > 0) {
    schema.sameAs = ORGANIZATION_SAME_AS
  }

  return schema
}

export function webSiteSchema() {
  return {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: ORG_NAME,
    url: SITE_URL,
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

