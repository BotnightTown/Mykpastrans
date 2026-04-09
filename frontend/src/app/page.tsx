import Carousel from "@/components/Carousel";
import NewsCard from "@/components/NewsCard";
import RouteShortInfo from "@/components/ui/RouteShortInfo";
import SectionTitle from "@/components/ui/SectionTitle";
import Link from "next/link";
import { getArticles } from "@/services/news.service";
import { formatDate } from "@/utils/date";
import { StrapiArticle } from "@/types/news.types";

export default async function Home() {
  let latestNews: StrapiArticle[] = [];
  try {
    const res = await getArticles({ page: 1, pageSize: 3 });
    latestNews = res.data;
  } catch {
    latestNews = [];
  }

  const strapiUrl =
    process.env.NEXT_PUBLIC_STRAPI_URL ?? "http://localhost:1337";

  return (
    <div className="">
      <Carousel>
        <div className="relative bg-cover bg-center h-screen flex flex-col items-center justify-center gap-8 px-8">
          <h1 className="text-5xl font-black text-white text-center drop-shadow-lg">
            КП «Миколаївпастранс»
          </h1>

          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 w-full max-w-5xl text-black">
            <Link
              href="/passengers/schedule"
              className="bg-white p-10 rounded border-b-4 border-(--primary-blue) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all"
            >
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">
                Розклад руху
              </h3>
              <p>
                Актуальні графіки та детальні маршрути всіх міських маршрутів.
              </p>
            </Link>
            <Link
              href="/news"
              className="bg-white p-10 rounded border-b-4 border-(--accent-pink) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all"
            >
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">
                Новини
              </h3>
              <p>Останні новини та оновлення від КП «Миколаївпастранс».</p>
            </Link>
            <a
              href="https://www.eway.in.ua/ua/cities/mykolaiv/routes"
              className="bg-white p-10 rounded border-b-4 border-(--primary-blue) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all"
            >
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">
                Моніторинг
              </h3>
              <p>Відстежуйте рух автобусів у реальному часі на мапі міста.</p>
            </a>
          </div>
        </div>
      </Carousel>

      <div className="w-full h-max flex flex-col items-center gap-24 px-8 py-24">
        <section className="max-w-6xl w-full flex flex-col gap-8">
          <SectionTitle title="Наші маршрути" />
          <div className="overflow-hidden rounded-xl border border-gray-200 shadow-sm">
            <ul className="w-full text-lg list-none p-0 m-0">
              <li className="hidden md:flex bg-gray-50 font-bold uppercase text-xs tracking-wider text-gray-500">
                <div className="w-1/6 p-4 border-b-2 border-(--primary-blue)">
                  Маршрут
                </div>
                <div className="w-2/6 p-4 border-b-2 border-(--primary-blue)">
                  Напрямок
                </div>
                <div className="w-2/6 p-4 border-b-2 border-(--primary-blue)">
                  Інтервал руху
                </div>
                <div className="w-1/6 p-4 border-b-2 border-(--primary-blue) text-right">
                  Розклад
                </div>
              </li>
              <RouteShortInfo
                routeNumber="1"
                routeName="Тернівка — «Океан»"
                intervalTime="10–15 хв"
                href="#"
              />
              <RouteShortInfo
                routeNumber="79"
                routeName="Варварівка — ВТФ «ВЕЛАМ»"
                intervalTime="10-15 хв"
                href="#"
              />
              <RouteShortInfo
                routeNumber="81"
                routeName="Намив — Ракетне Урочище"
                intervalTime="20-30 хв"
                href="#"
              />
              <RouteShortInfo
                routeNumber="91"
                routeName="Балабанівка — Центральний стадіон"
                intervalTime="20-30 хв"
                href="#"
              />
            </ul>
          </div>
        </section>

        <section className="max-w-6xl w-full flex flex-col gap-8">
          <div className="flex items-center justify-between">
            <SectionTitle title="Новини та оголошення" />
            <Link
              href="/news"
              className="text-sm font-bold text-(--primary-blue) hover:underline uppercase tracking-wider hidden sm:block"
            >
              Всі новини →
            </Link>
          </div>

          {latestNews.length === 0 ? (
            <p className="text-gray-400 text-center py-8">Новини відсутні</p>
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 md:gap-8">
              {latestNews.map((article) => {
                const imageUrl = article.cover?.url
                  ? article.cover.url.startsWith("http")
                    ? article.cover.url
                    : `${strapiUrl}${article.cover.url}`
                  : null;

                return (
                  <NewsCard
                    key={article.id}
                    slug={article.slug}
                    image={imageUrl}
                    date={formatDate(
                      article.timePublishedAt ?? article.publishedAt,
                    )}
                    title={article.title}
                  />
                );
              })}
            </div>
          )}

          <Link
            href="/news"
            className="sm:hidden text-center text-sm font-bold text-(--primary-blue) hover:underline uppercase tracking-wider"
          >
            Всі новини →
          </Link>
        </section>
      </div>
    </div>
  );
}
