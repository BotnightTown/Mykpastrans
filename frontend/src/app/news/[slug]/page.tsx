import { getArticleBySlug, getArticles } from "@/services/news.service";
import { StrapiRichText } from "@/types/news.types";
import { formatDate } from "@/utils/date";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";

interface Props {
  params: Promise<{ slug: string }>;
}

// Render Strapi rich text to JSX
function RichTextRenderer({ content }: { content: StrapiRichText[] }) {
  return (
    <div className="prose prose-lg max-w-none">
      {content.map((block, i) => {
        if (block.type === "paragraph") {
          return (
            <p
              key={i}
              className="mb-4 text-gray-700 leading-relaxed text-base md:text-lg"
            >
              {block.children.map((child, j) => {
                if (child.bold) return <strong key={j}>{child.text}</strong>;
                if (child.italic) return <em key={j}>{child.text}</em>;
                return <span key={j}>{child.text}</span>;
              })}
            </p>
          );
        }
        if (block.type === "heading") {
          return (
            <h2
              key={i}
              className="text-2xl font-bold text-(--primary-blue) mt-8 mb-4"
            >
              {block.children.map((child) => child.text).join("")}
            </h2>
          );
        }
        return null;
      })}
    </div>
  );
}

export async function generateStaticParams() {
  const res = await getArticles({ pageSize: 100 });
  return res.data.map((article) => ({ slug: article.slug }));
}

export default async function ArticlePage({ params }: Props) {
  const { slug } = await params;
  const res = await getArticleBySlug(slug);
  if (!res || !res.data || res.data.length === 0) {
    notFound();
  }
  // getArticleBySlug returns a list filtered by slug
  const article = Array.isArray(res.data) ? res.data[0] : res.data;

  if (!article) notFound();

  const strapiUrl =
    process.env.NEXT_PUBLIC_STRAPI_URL ?? "http://localhost:1337";

  const imageSrc = article.cover?.url
    ? article.cover.url.startsWith("http")
      ? article.cover.url
      : `${strapiUrl}${article.cover.url}`
    : null;

  return (
    <div className="w-full min-h-screen bg-(--light-bg)">
      {/* Back link */}
      <div className="bg-white border-b border-gray-200">
        <div className="max-w-4xl mx-auto px-8 py-4">
          <Link
            href="/news"
            className="text-sm text-(--primary-blue) font-semibold hover:underline flex items-center gap-1"
          >
            ← Всі новини
          </Link>
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">
        {/* Category */}
        {article.category && (
          <span className="inline-block bg-(--primary-blue) text-white text-xs font-bold uppercase tracking-wider px-3 py-1 mb-6">
            {article.category.name}
          </span>
        )}

        {/* Title */}
        <h1 className="text-3xl md:text-4xl font-black text-(--dark-navy) mb-4 leading-tight">
          {article.title}
        </h1>

        {/* Date */}
        <p className="text-gray-500 text-sm mb-8 border-b border-gray-200 pb-8">
          {formatDate(article.publishedTime ?? article.publishedAt)}
        </p>

        {/* Cover image */}
        {imageSrc && (
          <div className="mb-8">
            <Image
              src={imageSrc}
              alt={article.cover?.alternativeText ?? article.title}
              width={800}
              height={450}
              className="w-full object-cover max-h-112.5"
            />
          </div>
        )}

        {/* Excerpt */}
        {article.excerpt && (
          <p className="text-lg text-gray-600 font-medium mb-8 border-l-4 border-(--accent-pink) pl-4">
            {article.excerpt}
          </p>
        )}

        {/* Content */}
        <RichTextRenderer content={article.content} />
      </article>
    </div>
  );
}
