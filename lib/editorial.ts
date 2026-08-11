import { SITE_URL } from '@/lib/constants'

export const EDITOR_NAME = 'Marcelo Arancibia'
export const EDITOR_ROLE = 'fundador y responsable editorial de MigraGo'
export const EDITOR_PROFILE_URL = `${SITE_URL}/acerca#marcelo`

const GENERIC_AUTHOR_NAMES = new Set([
  '',
  'equipo editorial',
  'equipo migrago',
  'migrago',
])

export function getPublicAuthorName(author?: string | null) {
  const normalized = author?.trim().toLocaleLowerCase('es-CL') ?? ''
  return GENERIC_AUTHOR_NAMES.has(normalized) ? EDITOR_NAME : author!.trim()
}
