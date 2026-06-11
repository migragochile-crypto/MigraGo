export const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? 'https://www.migrago.cl'
export const SITE_NAME = 'MigraGo'

// Agregar URLs de perfiles verificados cuando estén disponibles.
// Cada URL que se agregue aquí aparece automáticamente en el schema
// Organization de todas las páginas → mejor señal EEAT para Google.
// Ejemplos:
//   'https://www.instagram.com/migrago_cl',
//   'https://www.facebook.com/migrago',
//   'https://www.linkedin.com/company/migrago',
//   'https://twitter.com/migrago_cl',
export const ORGANIZATION_SAME_AS: string[] = []
