"use client";

import { useEffect, useState, useCallback } from "react";
import NewsCard from "@/components/NewsCard";
import { getArticles, getCategories } from "@/services/news.service";
import { StrapiArticle, StrapiPagination } from "@/types/news.types";
import { formatDate } from "@/utils/date";
import { NewsGridSkeleton } from "@/components/skeletons";

export default function NewsPage() {
  const [articles, setArticles] = useState<StrapiArticle[]>([]);
  const [pagination, setPagination] = useState<StrapiPagination | null>(null);
  const [categories, setCategories] = useState<
    { slug: string; name: string }[]
  >([]);
  const [search, setSearch] = useState("");
  const [searchInput, setSearchInput] = useState("");
  const [selectedCategory, setSelectedCategory] = useState("");
  const [page, setPage] = useState(1);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    getCategories()
      .then((res) => setCategories(res.data ?? []))
      .catch(() => setCategories([]));
  }, []);

  const loadArticles = useCallback(async () => {
    setLoading(true);
    try {
      const res = await getArticles({
        page,
        pageSize: 9,
        search: search || undefined,
        category: selectedCategory || undefined,
      });
      setArticles(res.data);
      setPagination(res.meta.pagination);
    } catch {
      setArticles([]);
    } finally {
      setLoading(false);
    }
  }, [page, search, selectedCategory]);

  useEffect(() => {
    loadArticles();
  }, [loadArticles]);

  useEffect(() => {
    setPage(1);
  }, [search, selectedCategory]);

  const handleSearchSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setSearch(searchInput);
  };

  return (
    <div className="w-full min-h-screen bg-white">
      <div className="relative overflow-hidden py-14 px-8 bg-gradient-to-r from-(--primary-blue) via-(--primary-blue) to-[#e8609a]">
        <div className="absolute -right-16 top-1/2 -translate-y-1/2 w-72 h-72 rounded-full bg-[rgba(255,122,173,0.35)]" />
        <div
          className="absolute -bottom-8 left-40 w-28 h-28 rounded-full"
          style={{ background: "rgba(255,255,255,0.08)" }}
        />

        <div className="max-w-6xl mx-auto relative z-10">
          <div className="inline-block mb-3">
            <h1 className="text-4xl md:text-5xl font-black text-white uppercase tracking-tight">
              Новини
            </h1>
            <div className="mt-2 rounded-full h-1 bg-(--accent-pink) w-full" />
          </div>
          <p className="text-blue-100 text-base mt-1">
            Актуальні новини та оголошення КП «Миколаївпастранс»
          </p>
        </div>
      </div>

      <div className="max-w-6xl mx-auto px-8 py-8 flex flex-col gap-6">
        <div className="flex flex-col md:flex-row gap-3 items-start md:items-center">
          <form onSubmit={handleSearchSubmit} className="flex gap-2 flex-1">
            <div className="relative flex-1 rounded-xl overflow-hidden bg-white border-[2.5px] border-(--accent-pink) shadow-[0_2px_12px_rgba(255,122,173,0.13)]">
              <svg
                className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 flex-shrink-0 text-(--accent-pink)"
                fill="none"
                stroke="currentColor"
                strokeWidth={2.5}
                viewBox="0 0 24 24"
              >
                <circle cx="11" cy="11" r="8" />
                <path d="m21 21-4.35-4.35" />
              </svg>
              <input
                type="text"
                value={searchInput}
                onChange={(e) => setSearchInput(e.target.value)}
                placeholder="Пошук новин..."
                className="w-full pl-10 pr-4 py-2.5 text-sm focus:outline-none bg-transparent text-[#1a1a1a]"
              />
            </div>

            <button
              type="submit"
              className="px-5 rounded-xl text-sm font-bold uppercase tracking-wider text-white transition-all hover:opacity-90 active:scale-95 bg-(--accent-pink) py-2.25 cursor-pointer"
            >
              Знайти
            </button>

            {search && (
              <button
                type="button"
                onClick={() => {
                  setSearch("");
                  setSearchInput("");
                }}
                className="px-3 rounded-xl text-sm font-bold transition-all hover:opacity-80 border-2 border-[#fde8f2] bg-[#fff8fb] text-(--accent-pink) py-[9px]"
              >
                ✕
              </button>
            )}
          </form>

          {categories.length > 0 && (
            <div className="flex gap-2 flex-wrap">
              <button
                onClick={() => setSelectedCategory("")}
                className={`rounded-lg text-sm font-semibold transition-all hover:opacity-90 py-1.75 px-3.5 cursor-pointer ${
                  selectedCategory === ""
                    ? "bg-(--primary-blue) text-white border-2 border-(--primary-blue)"
                    : "bg-[#f8fbff] text-(--primary-blue) border-2 border-[#dceefb]"
                }`}
              >
                Всі
              </button>
              {categories.map((cat) => (
                <button
                  key={cat.slug}
                  onClick={() =>
                    setSelectedCategory(
                      selectedCategory === cat.slug ? "" : cat.slug,
                    )
                  }
                  className={`rounded-lg text-sm font-semibold transition-all hover:opacity-90 py-1.75 px-3.5 cursor-pointer ${
                    selectedCategory === cat.slug
                      ? "bg-(--primary-blue) text-white border-2 border-(--primary-blue)"
                      : "bg-[#f8fbff] text-(--primary-blue) border-2 border-[#dceefb]"
                  }`}
                >
                  {cat.name}
                </button>
              ))}
            </div>
          )}
        </div>

        {pagination && !loading && (
          <div className="flex items-center gap-2">
            <div className="w-1 h-4 rounded-full bg-(--accent-pink)" />
            <p className="text-sm text-gray-400">
              Знайдено{" "}
              <span className="font-bold text-(--primary-blue)">
                {pagination.total}
              </span>{" "}
              новин
              {search && (
                <>
                  {" "}
                  за запитом{" "}
                  <span className="font-semibold text-(--accent-pink)">
                    «{search}»
                  </span>
                </>
              )}
            </p>
          </div>
        )}

        {loading ? (
          <NewsGridSkeleton />
        ) : articles.length === 0 ? (
          <div className="text-center py-24 flex flex-col items-center gap-4">
            <div className="w-16 h-16 rounded-2xl flex items-center justify-center bg-[#fff0f6]">
              <svg
                className="w-8 h-8 text-(--accent-pink)"
                fill="none"
                stroke="currentColor"
                strokeWidth={1.5}
                viewBox="0 0 24 24"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M19.5 14.25v-2.625a3.375 3.375 0 0 0-3.375-3.375h-1.5A1.125 1.125 0 0 1 13.5 7.125v-1.5a3.375 3.375 0 0 0-3.375-3.375H8.25m0 12.75h7.5m-7.5 3H12M10.5 2.25H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 0 0-9-9Z"
                />
              </svg>
            </div>
            <p className="font-semibold text-(--accent-pink) text-lg">
              Новин не знайдено
            </p>
            <p className="text-gray-400 text-sm">
              Спробуйте змінити параметри пошуку
            </p>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {articles.map((article) => (
              <NewsCard
                key={article.id}
                slug={article.slug}
                image={article.cover?.url ?? null}
                date={formatDate(
                  article.timePublishedAt ?? article.publishedAt,
                )}
                title={article.title}
              />
            ))}
          </div>
        )}

        {pagination && pagination.pageCount > 1 && (
          <div className="flex justify-center gap-2 mt-4 flex-wrap">
            <button
              onClick={() => setPage((p) => Math.max(1, p - 1))}
              disabled={page === 1}
              className="rounded-lg text-sm font-bold transition-all disabled:opacity-40 disabled:cursor-not-allowed hover:opacity-90 border-2 border-[#dceefb] bg-[#f8fbff] text-(--primary-blue) py-1.75 px-4"
            >
              ← Назад
            </button>

            {Array.from({ length: pagination.pageCount }).map((_, i) => {
              const pageNum = i + 1;
              return (
                <button
                  key={pageNum}
                  onClick={() => setPage(pageNum)}
                  className={`rounded-lg text-sm font-bold transition-all hover:opacity-90 py-1.75 px-[14px] ${
                    page === pageNum
                      ? "bg-(--accent-pink) text-white border-2 border-(--accent-pink)"
                      : "bg-[#f8fbff] text-(--primary-blue) border-2 border-[#dceefb]"
                  }`}
                >
                  {pageNum}
                </button>
              );
            })}

            <button
              onClick={() =>
                setPage((p) => Math.min(pagination.pageCount, p + 1))
              }
              disabled={page === pagination.pageCount}
              className="rounded-lg text-sm font-bold transition-all disabled:opacity-40 disabled:cursor-not-allowed hover:opacity-90 border-2 border-[#dceefb] bg-[#f8fbff] text-(--primary-blue) py-[7px] px-[16px]"
            >
              Вперед →
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
