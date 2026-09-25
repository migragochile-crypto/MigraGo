export interface ArticleHeading {
  id: string
  text: string
  level: 2 | 3
}

function plainText(value: string) {
  return value
    .replace(/<[^>]+>/g, '')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/\s+/g, ' ')
    .trim()
}

function slugifyHeading(value: string) {
  return plainText(value)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .replace(/[^a-z0-9\s-]/g, '')
    .trim()
    .replace(/\s+/g, '-')
    .replace(/-+/g, '-')
}

export function addHeadingIds(content: string) {
  const seen = new Map<string, number>()

  return content.replace(/<h([23])([^>]*)>([\s\S]*?)<\/h\1>/gi, (match, level, attributes, body) => {
    if (/\sid=(['"])[^'"]+\1/i.test(attributes)) return match

    const baseId = slugifyHeading(body) || `seccion-${level}`
    const count = seen.get(baseId) ?? 0
    seen.set(baseId, count + 1)
    const id = count === 0 ? baseId : `${baseId}-${count + 1}`

    return `<h${level}${attributes} id="${id}">${body}</h${level}>`
  })
}

export function getArticleHeadings(content: string, limit = 6): ArticleHeading[] {
  const withIds = addHeadingIds(content)
  const headings: ArticleHeading[] = []
  const pattern = /<h([23])([^>]*)\sid=(['"])([^'"]+)\3[^>]*>([\s\S]*?)<\/h\1>/gi
  let match: RegExpExecArray | null

  while ((match = pattern.exec(withIds)) && headings.length < limit) {
    headings.push({
      level: Number(match[1]) as 2 | 3,
      id: match[4],
      text: plainText(match[5]),
    })
  }

  return headings.filter((heading) => heading.text)
}
