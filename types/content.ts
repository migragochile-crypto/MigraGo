export type ContentType = 'pillar' | 'cluster' | 'hub' | 'tool'
export type SchemaType = 'Article' | 'FAQPage' | 'HowTo' | 'WebPage'

export interface FaqItem {
  q: string
  a: string
}

export interface HowToStep {
  name: string
  text: string
}

export interface Article {
  id: string
  slug: string
  silo: string
  parent_slug: string | null
  type: ContentType
  title: string
  h1: string
  meta_description: string
  canonical?: string | null
  keyword_primary: string | null
  content: string | null
  schema_type: SchemaType
  faq_items: FaqItem[]
  howto_steps: HowToStep[]
  related_slugs: string[]
  country_tags: string[]
  reading_time_minutes: number | null
  author: string
  is_published: boolean
  published_at: string | null
  updated_at: string
  created_at: string
}

export interface GlossaryTerm {
  id: string
  slug: string
  term: string
  definition: string
  related_slugs: string[]
  created_at: string
}

export interface SiloConfig {
  label: string
  description: string
  clusters: readonly string[]
  cta: { text: string; href: string }
}

export interface PaisConfig {
  label: string
  flag: string
  demonym: string
}

export interface BreadcrumbItem {
  label: string
  href: string
}

