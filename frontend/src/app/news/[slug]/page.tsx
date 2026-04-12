import { getArticleBySlug, getArticles } from "@/services/news.service";
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
    <div className="w-full min-h-screen bg-white">

      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <Link
              href="/news"
              className="flex items-center justify-center gap-2 text-xl font-bold text-white transition-opacity hover:opacity-80 w-full"
            >
              Повернутись до новин
          </Link>
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">

        {article.category && (
          <span
            className="inline-block text-white text-xs font-bold uppercase tracking-wider px-3 py-1.5 rounded-lg mb-5"
            style={{ background: "#0E95F7" }}
          >
            {article.category.name}
          </span>
        )}

        <h1 className="text-3xl md:text-4xl font-black text-gray-900 mb-4 leading-tight">
          {article.title}
        </h1>

        <div
          className="flex items-center gap-3 mb-8 pb-8"
          style={{ borderBottom: "2px solid #e8f4fe" }}
        >
          <div
            className="w-1 h-5 rounded-full"
            style={{ background: "#FF7AAD" }}
          />
          <p className="text-gray-400 text-sm font-medium">
            {formatDate(article.timePublishedAt ?? article.publishedAt)}
          </p>
        </div>

        {imageSrc && (
          <div
            className="mb-8 rounded-2xl overflow-hidden"
            style={{ border: "2px solid #e8f4fe" }}
          >
            <Image
              src={imageSrc}
              alt={article.cover?.alternativeText ?? article.title}
              width={800}
              height={450}
              className="w-full h-auto object-cover max-h-[450px]"
            />
          </div>
        )}

        {article.excerpt && (
          <p className="text-lg text-gray-600 font-medium mb-8 border-l-4 border-[#e65e92] pl-5 bg-[#fdf0f5] py-4 pr-4 rounded-r-lg">
            {article.excerpt}
          </p>
        )}

        <div className="prose prose-lg max-w-none">
          <RichTextRenderer content={article.content} />
        </div>

      </article>

      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <Link
              href="/news"
              className="flex items-center justify-center gap-2 text-xl font-bold text-white transition-opacity hover:opacity-80 w-full"
            >
              Повернутись до новин
          </Link>
        </div>
      </div>
    </div>
  );
}