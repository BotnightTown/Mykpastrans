"use client";

import { useEffect, useState, useCallback } from "react";
import NewsCard from "@/components/NewsCard";
import SectionTitle from "@/components/ui/SectionTitle";
import { getArticles, getCategories } from "@/services/news.service";
import { StrapiArticle, StrapiPagination } from "@/types/news.types";
import { formatDate } from "@/utils/date";

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
    <div className="w-full min-h-screen bg-(--light-bg)">
      <div className="bg-(--primary-blue) py-16 px-8">
        <div className="max-w-6xl mx-auto">
          <h1 className="text-4xl md:text-5xl font-black text-white uppercase mb-2">
            Новини
          </h1>
          <p className="text-blue-100 text-lg">
            Актуальні новини та оголошення КП «Миколаївпастранс»
          </p>
        </div>
      </div>

      <div className="max-w-6xl mx-auto px-8 py-12 flex flex-col gap-8">
        <div className="flex flex-col md:flex-row gap-4">
          <form onSubmit={handleSearchSubmit} className="flex gap-2 flex-1">
            <input
              type="text"
              value={searchInput}
              onChange={(e) => setSearchInput(e.target.value)}
              placeholder="Пошук новин..."
              className="flex-1 border border-gray-200 bg-white px-4 py-2.5 text-sm focus:outline-none focus:border-(--primary-blue) transition-colors"
            />
            <button
              type="submit"
              className="bg-(--primary-blue) text-white px-6 py-2.5 text-sm font-bold uppercase tracking-wider hover:bg-blue-700 transition-colors"
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
                className="border border-gray-200 bg-white px-4 py-2.5 text-sm text-gray-500 hover:bg-gray-50 transition-colors"
              >
                ✕
              </button>
            )}
          </form>

          {categories.length > 0 && (
            <div className="flex gap-2 flex-wrap">
              <button
                onClick={() => setSelectedCategory("")}
                className={`px-4 py-2 text-sm font-semibold border transition-colors ${
                  selectedCategory === ""
                    ? "bg-(--primary-blue) text-white border-(--primary-blue)"
                    : "bg-white text-gray-600 border-gray-200 hover:border-(--primary-blue)"
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
                  className={`px-4 py-2 text-sm font-semibold border transition-colors ${
                    selectedCategory === cat.slug
                      ? "bg-(--primary-blue) text-white border-(--primary-blue)"
                      : "bg-white text-gray-600 border-gray-200 hover:border-(--primary-blue)"
                  }`}
                >
                  {cat.name}
                </button>
              ))}
            </div>
          )}
        </div>

        {pagination && !loading && (
          <p className="text-sm text-gray-500">
            Знайдено{" "}
            <span className="font-semibold text-gray-800">
              {pagination.total}
            </span>{" "}
            новин
            {search && (
              <>
                {" "}
                за запитом{" "}
                <span className="font-semibold text-(--primary-blue)">
                  «{search}»
                </span>
              </>
            )}
          </p>
        )}

        {loading ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {Array.from({ length: 6 }).map((_, i) => (
              <div
                key={i}
                className="border border-gray-200 bg-white animate-pulse"
              >
                <div className="w-full h-52 bg-gray-200" />
                <div className="p-6 flex flex-col gap-3">
                  <div className="h-3 bg-gray-200 rounded w-1/3" />
                  <div className="h-5 bg-gray-200 rounded w-3/4" />
                  <div className="h-4 bg-gray-200 rounded w-full" />
                  <div className="h-4 bg-gray-200 rounded w-2/3" />
                </div>
              </div>
            ))}
          </div>
        ) : articles.length === 0 ? (
          <div className="text-center py-24">
            <p className="text-gray-400 text-xl mb-2">Новин не знайдено</p>
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
          <div className="flex justify-center gap-2 mt-4">
            <button
              onClick={() => setPage((p) => Math.max(1, p - 1))}
              disabled={page === 1}
              className="px-4 py-2 border border-gray-200 bg-white text-sm font-semibold text-gray-600 hover:border-(--primary-blue) disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
            >
              ← Назад
            </button>

            {Array.from({ length: pagination.pageCount }).map((_, i) => {
              const pageNum = i + 1;
              return (
                <button
                  key={pageNum}
                  onClick={() => setPage(pageNum)}
                  className={`px-4 py-2 border text-sm font-semibold transition-colors ${
                    page === pageNum
                      ? "bg-(--primary-blue) text-white border-(--primary-blue)"
                      : "bg-white text-gray-600 border-gray-200 hover:border-(--primary-blue)"
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
              className="px-4 py-2 border border-gray-200 bg-white text-sm font-semibold text-gray-600 hover:border-(--primary-blue) disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
            >
              Вперед →
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
