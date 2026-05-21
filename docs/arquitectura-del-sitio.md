# Arquitectura del Sitio — MigraciónChile

Documentación técnica de la arquitectura del sitio, incluyendo estructura de rutas, arquitectura topical, estrategia de renderizado, configuración SEO y flujo de datos.

---

## 1. Stack Tecnológico

- **Next.js 16.2.6** con App Router
- **React 19.2.4**
- **Tailwind CSS v4**
- **Supabase** como CMS/headless database
- **TypeScript**

---

## 2. Estructura de Rutas y Carpetas

```
app/
├── (silos)/                    # Route group para silos temáticos
│   ├── autodenuncia/
│   │   ├── page.tsx           # Pillar page
│   │   └── [cluster]/page.tsx # Cluster pages
│   ├── visa-temporaria/
│   ├── permanencia-definitiva/
│   ├── nacionalizacion/
│   ├── problemas/
│   └── vivir-en-chile/
├── (paises)/                   # Route group para hubs por país
│   ├── [pais]/page.tsx        # Country hub
│   └── [pais]/[tema]/page.tsx # Country-specific content
├── (herramientas)/            # Route group para herramientas
│   ├── herramientas/page.tsx
│   └── herramientas/[herramienta]/page.tsx
├── (transversal)/             # Route group para contenido transversal
│   ├── noticias/[slug]/page.tsx
│   ├── casos/[slug]/page.tsx
│   └── glosario/[slug]/page.tsx
├── sitemap.xml/route.ts        # Sitemap index principal
├── sitemap-silos.xml/route.ts  # Sitemap de silos y clusters
├── sitemap-paises.xml/route.ts # Sitemap de países
├── sitemap-herramientas.xml/route.ts # Sitemap de herramientas
├── sitemap-noticias.xml/route.ts    # Sitemap de noticias
├── robots.ts                   # robots.txt
├── layout.tsx                  # Layout raíz
├── page.tsx                    # Homepage
└── not-found.tsx               # Página 404 personalizada

lib/
├── content/
│   └── silos.ts                # Definición de silos, países, herramientas
├── seo/
│   ├── metadata.ts             # Generación de metadata
│   └── schemas.ts              # Schema.org JSON-LD
└── supabase/
    ├── client.ts               # Cliente Supabase
    └── queries.ts              # Queries a Supabase (con caching)

components/
├── layout/
│   ├── Header.tsx              # Navegación principal
│   └── Footer.tsx              # Footer con enlaces internos
├── templates/
│   └── ArticlePageTemplate.tsx # Template para páginas de artículo
├── ui/
│   ├── RelatedContent.tsx      # Artículos relacionados
│   ├── SiloSidebar.tsx         # Sidebar de navegación por silo
│   └── Breadcrumbs.tsx         # Breadcrumbs
├── seo/
│   └── JsonLd.tsx              # Componente para JSON-LD
└── content/
    └── ArticleBody.tsx         # Renderizado de contenido HTML
```

---

## 3. Arquitectura Topical

### 3.1 Silos (Pillar Pages)

6 silos principales definidos en `lib/content/silos.ts`:

| Silo | Descripción | Clusters |
|------|-------------|----------|
| `autodenuncia` | Regularización migratoria | 7 clusters |
| `visa-temporaria` | Tipos de visa temporaria | 12 clusters |
| `permanencia-definitiva` | Residencia permanente | 8 clusters |
| `nacionalizacion` | Ciudadanía chilena | 6 clusters |
| `problemas` | Solución de problemas | 6 clusters |
| `vivir-en-chile` | Vida cotidiana en Chile | 10 clusters |

**Estructura de un silo:**
- Pillar page: `/autodenuncia/` (resumen del tema)
- Cluster pages: `/autodenuncia/pdi-paso-a-paso/`, `/autodenuncia/documentos-necesarios/`, etc.

### 3.2 Hubs por País

7 hubs por nacionalidad:

| País | Slug | Demonym |
|------|------|---------|
| Venezuela | `venezuela` | venezolano |
| Perú | `peru` | peruano |
| Colombia | `colombia` | colombiano |
| Haití | `haiti` | haitiano |
| Bolivia | `bolivia` | boliviano |
| Argentina | `argentina` | argentino |
| República Dominicana | `rd` | dominicano |

**Estructura de un hub:**
- Hub page: `/venezuela/` (visión general para venezolanos)
- Tema específico: `/venezuela/autodenuncia/` (autodenuncia para venezolanos)

### 3.3 Herramientas

5 herramientas interactivas:

- `calculadora-elegibilidad` - Calculadora de elegibilidad de visas
- `simulador-plazos` - Simulador de plazos para PD y naturalización
- `checklist-permanencia-definitiva` - Checklist de documentos para PD
- `checklist-temporaria` - Checklist de documentos para visa temporaria
- `consultar-estado` - Guía para consultar estado de trámite

### 3.4 Contenido Transversal

- **Noticias** (`type: news`) - Actualizaciones migratorias
- **Casos** (`type: caso`) - Casos reales y experiencias
- **Glosario** - Definiciones de términos migratorios

---

## 4. Estrategia de Renderizado

### 4.1 ISR (Incremental Static Regeneration)

**Configuración global:**
```typescript
export const revalidate = 86400 // 24 horas
```

**Rutas con ISR:**
- Todas las páginas de silos y clusters
- Todas las páginas de países
- Todas las páginas de herramientas
- Páginas de noticias y casos

### 4.2 SSG (Static Site Generation)

**Rutas pre-generadas con `generateStaticParams`:**
- Clusters de silos: basado en artículos publicados en Supabase
- Países: basado en configuración en `silos.ts`
- Herramientas: basado en `HERRAMIENTAS_LIST`
- Temas por país: basado en artículos con `country_tags`

### 4.3 Dynamic Params

**Configuración:**
```typescript
export const dynamicParams = true
```

Permite renderizado on-demand para rutas no pre-generadas (fallback a contenido estático).

---

## 5. Configuración SEO

### 5.1 Metadata

**Global metadata** (`app/layout.tsx`):
- `metadataBase`: URL base del sitio
- `title`: Template con nombre del sitio
- `description`: Descripción global
- `openGraph`: Configuración OG
- `robots`: `index: true, follow: true`

**Metadata por artículo** (`lib/seo/metadata.ts`):
- `articleMetadata()`: Genera metadata para artículos
- `buildMetadata()`: Genera metadata para páginas genéricas
- Canonical URLs dinámicos (para variantes por país)
- OpenGraph images dinámicas por tipo de contenido
- Twitter cards

### 5.2 Sitemaps

**Sitemap index principal** (`app/sitemap.ts`):
- Referencia los 4 sitemaps segmentados
- Incluye homepage con prioridad 1

**Sitemaps segmentados:**
- `sitemap-silos.xml`: Pillar pages (prioridad 0.9) y clusters (0.8)
- `sitemap-paises.xml`: Hubs (0.8) y temas por país (0.7)
- `sitemap-herramientas.xml`: Herramientas (0.7)
- `sitemap-noticias.xml`: Noticias, casos, glosario (0.6)

### 5.3 Schema.org JSON-LD

**Schemas implementados** (`lib/seo/schemas.ts`):
- `organizationSchema` - Organización
- `webSiteSchema` - Sitio web con SearchAction
- `articleSchema` - Artículos
- `faqSchema` - Preguntas frecuentes
- `howToSchema` - Guías paso a paso
- `breadcrumbSchema` - Breadcrumbs
- `softwareApplicationSchema` - Herramientas interactivas

### 5.4 Robots.txt

**Configuración** (`app/robots.ts`):
- Allow: `/`
- Disallow: `/api/`, `/admin/`
- Sitemaps: Referencia a los 4 sitemaps segmentados

---

## 6. Flujo de Datos

### 6.1 Supabase → Componentes

**Queries principales** (`lib/supabase/queries.ts`):

| Función | Uso | Cache |
|---------|-----|-------|
| `getArticleBySlug()` | Obtener artículo por slug | 1 hora |
| `getArticlesBySilo()` | Obtener artículos de un silo | 30 min |
| `getRelatedArticles()` | Obtener artículos relacionados | 30 min |
| `getAllPublishedArticles()` | Obtener todos los artículos publicados | 10 min |
| `getArticleWithRelated()` | Obtener artículo + relacionados en 1 query | 1 hora |
| `getGlossaryTerm()` | Obtener término de glosario | 1 hora |
| `getLatestNews()` | Obtener noticias recientes | 30 min |

### 6.2 Esquema de Base de Datos

**Tabla `articles`:**
- `slug` - URL del artículo
- `silo` - Silo al que pertenece
- `type` - Tipo (pillar, cluster, hub, tool, news, caso)
- `title` - Título para metadata
- `h1` - H1 visible en página
- `meta_description` - Descripción para SEO
- `keyword_primary` - Keyword principal
- `content` - Contenido HTML
- `schema_type` - Tipo de schema (Article, FAQPage, HowTo)
- `faq_items` - JSONB con FAQs
- `howto_steps` - JSONB con pasos HowTo
- `related_slugs` - Array de slugs relacionados
- `country_tags` - Array de países
- `reading_time_minutes` - Tiempo de lectura
- `author` - Autor
- `is_published` - Estado de publicación
- `published_at` - Fecha de publicación
- `updated_at` - Fecha de actualización

**Tabla `glossary_terms`:**
- `slug` - URL del término
- `term` - Término
- `definition` - Definición
- `related_slugs` - Artículos relacionados

### 6.3 Caching Strategy

**Implementado con `unstable_cache` de Next.js:**
- Artículos individuales: 1 hora
- Listas por silo: 30 minutos
- Artículos relacionados: 30 minutos
- Todos los artículos: 10 minutos
- Tags de invalidación por slug/silo

---

## 7. Enlazado Interno

### 7.1 Navegación Principal

**Header** (`components/layout/Header.tsx`):
- Enlaces a silos principales
- Enlace a Herramientas
- Enlace a Glosario

### 7.2 Sidebar por Silo

**SiloSidebar** (`components/ui/SiloSidebar.tsx`):
- Lista todos los artículos del silo actual
- Muestra tipo (pillar/cluster)
- Resalta artículo actual
- Cacheado por silo

### 7.3 Contenido Relacionado

**RelatedContent** (`components/ui/RelatedContent.tsx`):
- Basado en `related_slugs` del artículo
- Grid de 2 columnas
- Muestra silo de origen
- Cacheado por combinación de slugs

### 7.4 Footer

**Footer** (`components/layout/Footer.tsx`):
- Enlaces a todos los silos
- Enlaces a todos los países
- Enlaces a herramientas
- Enlaces a glosario, noticias, casos
- Disclaimer legal

### 7.5 Breadcrumbs

**Breadcrumbs** (`components/ui/Breadcrumbs.tsx`):
- Jerarquía: Inicio → Silo/País → Artículo
- Schema.org BreadcrumbList
- Consistente en todas las páginas

---

## 8. Componentes Reutilizables

### 8.1 Templates

**ArticlePageTemplate** (`components/templates/ArticlePageTemplate.tsx`):
- Renderiza artículo con layout consistente
- Inyecta JSON-LD schemas dinámicamente
- Incluye breadcrumbs, sidebar, related content
- Muestra FAQ y HowTo cuando aplica
- CTA banner en sidebar derecho

### 8.2 UI Components

- **Breadcrumbs** - Navegación jerárquica
- **RelatedContent** - Artículos relacionados
- **SiloSidebar** - Navegación por silo
- **CtaBanner** - Banner de llamada a acción
- **ToolRenderer** - Renderizado de herramientas interactivas

---

## 9. Optimizaciones Implementadas

### 9.1 SEO Críticas (completadas)
- ✅ Corregir `generateStaticParams` para `[pais]/[tema]`
- ✅ Implementar canonical para variantes por país

### 9.2 SEO Altas (completadas)
- ✅ Crear sitemap index principal
- ✅ Implementar caching de queries Supabase
- ✅ Agregar OpenGraph images

### 9.3 SEO Medias (completadas)
- ✅ 404 personalizada con enlaces
- ✅ SoftwareApplication schema para herramientas
- ✅ Optimizar queries con joins (`getArticleWithRelated`)

---

## 10. Potencial de Escalabilidad

### 10.1 Expansión de Países
- **Actual**: 7 países
- **Potencial**: 20-30 países (Latam completo)
- **Impacto**: 7×6 = 42 páginas actuales → 30×20 = 600 páginas

### 10.2 Expansión de Clusters
- **Actual**: 6-12 clusters por silo
- **Potencial**: 15-20 clusters por silo
- **Impacto**: ~50 clusters actuales → ~100 clusters

### 10.3 Expansión de Herramientas
- **Actual**: 5 herramientas
- **Potencial**: 15-20 herramientas
- **Impacto**: 5 páginas → 20 páginas

### 10.4 Total Potencial
- **Actual**: ~50 páginas
- **Potencial**: 1,000-2,000 páginas con arquitectura actual

---

## 11. Consideraciones Importantes

### 11.1 EEAT
- Disclaimer claro en footer
- Sección E-E-A-T en homepage
- Author field en artículos
- Fechas de actualización visibles
- Fuentes oficiales mencionadas

### 11.2 Performance
- ISR con 24h revalidate
- Caching agresivo de queries
- Pre-generación de rutas conocidas
- Optimización de imágenes pendiente

### 11.3 Seguridad
- Headers de seguridad en `next.config.ts`
- RLS en Supabase para lecturas públicas
- No exposición de secrets en cliente

---

*Versión 1.0 — Mayo 2026*  
*Actualizado con mejoras SEO implementadas*
