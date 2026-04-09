import { getArticleBySlug, getArticles } from "@/services/news.service";
import { StrapiRichText, StrapiRichTextChild } from "@/types/news.types";
import { formatDate } from "@/utils/date";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";

interface Props {
  params: Promise<{ slug: string }>;
}

function renderChildren(children: StrapiRichTextChild[]) {
  return children.map((child, j) => {
    if (child.bold && child.italic)
      return (
        <strong key={j}>
          <em>{child.text}</em>
        </strong>
      );
    if (child.bold) return <strong key={j}>{child.text}</strong>;
    if (child.italic) return <em key={j}>{child.text}</em>;
    if (child.underline) return <u key={j}>{child.text}</u>;
    return <span key={j}>{child.text}</span>;
  });
}

export function RichTextRenderer({ content }: { content: StrapiRichText[] }) {
  return (
    <div className="max-w-none">
      {content.map((block, i) => {
        if (block.type === "paragraph") {
          const isEmpty = block.children.every((c) => c.text === "");
          if (isEmpty) return <div key={i} className="mb-2" />;

          return (
            <p
              key={i}
              className="mb-4 text-gray-700 leading-relaxed text-base md:text-lg"
            >
              {renderChildren(block.children)}
            </p>
          );
        }

        if (block.type === "heading") {
          const level = (block as any).level ?? 2;
          const text = block.children.map((c) => c.text).join("");
          const classes = "font-bold text-(--primary-blue) mt-8 mb-4";
          if (level === 1)
            return (
              <h1 key={i} className={`text-3xl ${classes}`}>
                {text}
              </h1>
            );
          if (level === 2)
            return (
              <h2 key={i} className={`text-2xl ${classes}`}>
                {text}
              </h2>
            );
          if (level === 3)
            return (
              <h3 key={i} className={`text-xl ${classes}`}>
                {text}
              </h3>
            );
          if (level === 4)
            return (
              <h4 key={i} className={`text-lg ${classes}`}>
                {text}
              </h4>
            );
          return (
            <h5 key={i} className={`text-base ${classes}`}>
              {text}
            </h5>
          );
        }

        if (block.type === "list") {
          const isOrdered = (block as any).format === "ordered";
          const ListTag = isOrdered ? "ol" : "ul";
          const listClass = isOrdered
            ? "list-decimal list-outside ml-6 mb-4 space-y-1"
            : "list-disc list-outside ml-6 mb-4 space-y-1";

          return (
            <ListTag key={i} className={listClass}>
              {block.children.map((item, j) => {
                const itemChildren = (item as any).children ?? [];
                return (
                  <li
                    key={j}
                    className="text-gray-700 leading-relaxed text-base md:text-lg"
                  >
                    {renderChildren(itemChildren)}
                  </li>
                );
              })}
            </ListTag>
          );
        }

        if (block.type === "quote") {
          return (
            <blockquote
              key={i}
              className="border-l-4 border-(--accent-pink) pl-4 my-6 italic text-gray-600"
            >
              {renderChildren(block.children)}
            </blockquote>
          );
        }

        if (block.type === "thematic-break") {
          return <hr key={i} className="my-8 border-gray-200" />;
        }

        return null;
      })}
    </div>
  );
}

export async function generateStaticParams() {
  try {
    const res = await getArticles({ pageSize: 100 });
    return res.data.map((article) => ({ slug: article.slug }));
  } catch {
    return [];
  }
}

export default async function ArticlePage({ params }: Props) {
  const { slug } = await params;

  let article;
  try {
    const res = await getArticleBySlug(slug);
    article = res.data?.[0];
  } catch (e) {
    console.error("Failed to fetch article:", e);
    notFound();
  }

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
        {article.category && (
          <span className="inline-block bg-(--primary-blue) text-white text-xs font-bold uppercase tracking-wider px-3 py-1 mb-6">
            {article.category.name}
          </span>
        )}

        <h1 className="text-3xl md:text-4xl font-black text-(--dark-navy) mb-4 leading-tight">
          {article.title}
        </h1>

        <p className="text-gray-500 text-sm mb-8 border-b border-gray-200 pb-8">
          {formatDate(article.timePublishedAt ?? article.publishedAt)}
        </p>

        {imageSrc && (
          <div className="mb-8">
            <Image
              src={imageSrc}
              alt={article.cover?.alternativeText ?? article.title}
              width={800}
              height={450}
              className="max-w-full w-max h-auto object-cover max-h-112.5"
            />
          </div>
        )}

        {article.excerpt && (
          <p className="text-lg text-gray-600 font-medium mb-8 border-l-4 border-(--accent-pink) pl-4">
            {article.excerpt}
          </p>
        )}

        <RichTextRenderer content={article.content} />
      </article>
    </div>
  );
}
