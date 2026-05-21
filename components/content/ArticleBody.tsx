interface Props {
  content: string
}

export default function ArticleBody({ content }: Props) {
  return (
    <div
      className="prose prose-lg max-w-none
        prose-headings:font-bold prose-headings:text-gray-900
        prose-h2:text-2xl prose-h2:mt-10 prose-h2:mb-4
        prose-h3:text-xl prose-h3:mt-8 prose-h3:mb-3
        prose-p:text-gray-700 prose-p:leading-relaxed
        prose-a:text-primary prose-a:no-underline hover:prose-a:underline
        prose-strong:text-gray-900
        prose-ul:text-gray-700 prose-ol:text-gray-700
        prose-li:my-1
        prose-blockquote:border-primary prose-blockquote:text-gray-600
        prose-code:text-primary prose-code:bg-gray-100 prose-code:px-1 prose-code:rounded
        prose-table:text-sm
        prose-th:bg-gray-100 prose-th:font-semibold"
      dangerouslySetInnerHTML={{ __html: content }}
    />
  )
}

