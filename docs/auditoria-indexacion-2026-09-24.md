# Auditoria de indexacion editorial — 24 de septiembre de 2026

## Linea base

Datos observados en Google Search Console, con actualizacion del 20 de septiembre de 2026:

- 32 paginas indexadas.
- 110 paginas no indexadas.
- 105 URLs en `Descubierta: actualmente sin indexar`.
- 1 URL en `Rastreada: actualmente sin indexar`.
- 0 enlaces externos detectados.
- 117 clics y 8.859 impresiones durante los ultimos 28 dias.

## Hallazgos tecnicos

El sitemap publicado contenia 140 entradas, de las cuales solo 136 eran unicas. Cuatro rutas de
`problemas-migratorios` respondian 404 y otras cuatro aparecian duplicadas por la normalizacion del
antiguo silo `/problemas`. Tambien existian grupos de articulos con la misma intencion de busqueda.

## Politica aplicada

El inventario prioritario se define en `lib/seo/indexing.ts` y debe revisarse de forma deliberada.
Una pagina no entra al indice por superar una cantidad minima de palabras. Debe cumplir todos estos
criterios:

1. Resolver una intencion distinta y necesaria para la audiencia de MigraGo.
2. Citar y enlazar fuentes oficiales vigentes.
3. Incorporar contexto, limites, ejemplos o analisis propios; no limitarse a resumir una fuente.
4. Tener autor, fecha de revision y una ruta canonica coherente.
5. No competir con otra guia de MigraGo que responda mejor la misma pregunta.

Las guias aplazadas siguen disponibles para lectores, pero reciben `noindex, follow`, salen de los
sitemaps y dejan de ocupar lugares destacados en la navegacion editorial. Pueden volver al inventario
solo despues de una revision individual.

## Consolidaciones

- Los articulos del antiguo silo `/problemas` se integran en las rutas canonicas de
  `/problemas-migratorios`.
- Las dos noticias sobre el sueldo minimo se consolidan en una URL permanente y actualizable.
- Tres guias repetidas de nacionalizacion se integran en las paginas de carta y requisitos.
- Las versiones breves sobre AFP, arriendo y salud se redirigen a sus guias completas.
- Dos paginas introductorias de autodenuncia se integran en el hub principal.
- La guia breve para solicitar Residencia Definitiva se integra en el hub del tramite.

La migracion de base de datos correspondiente es
`supabase/migrations/20260924000001_editorial_inventory_consolidation.sql`.

## Resultado esperado al publicar

- Sitemap principal: 68 URLs unicas, frente a 140 entradas anteriores.
- Cero URLs del sitemap con respuesta 404 o redireccion.
- Redirecciones permanentes para todas las paginas fusionadas.
- Navegacion lateral y articulos relacionados limitados al inventario prioritario.
- Conservacion de todas las paginas que ya tenian senales relevantes en Search Console, salvo URLs
  obsoletas o fusionadas con una pagina canonica mejor.

## Seguimiento

Despues del despliegue y de aplicar la migracion:

1. Comprobar el sitemap publicado y volver a enviarlo una sola vez en Search Console.
2. Solicitar indexacion solo de la portada y de las guias prioritarias que hayan cambiado de forma
   sustancial.
3. Revisar la evolucion a los 14 y 28 dias.
4. No volver a solicitar AdSense hasta que Google haya rastreado el nuevo inventario y disminuya de
   forma sostenida el grupo `Descubierta: actualmente sin indexar`.
