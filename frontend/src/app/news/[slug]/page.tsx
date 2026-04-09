import { getArticleBySlug, getArticles } from "@/services/news.service";
import { StrapiRichText, StrapiRichTextChild } from "@/types/news.types";
import { formatDate } from "@/utils/date";
import { RichTextRenderer } from "@/utils/renderText";
import Image from "next/image";
import Link from "next/link";
import { notFound } from "next/navigation";

interface Props {
  params: Promise<{ slug: string }>;
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
