import { getVacancies, getVacancyBySlug } from "@/services/vacancy.service";
import { formatDate } from "@/utils/date";
import Link from "next/link";
import { FaPhone } from "react-icons/fa6";
import { notFound } from "next/navigation";
import { RichTextRenderer } from "@/utils/renderText";

interface Props {
  params: Promise<{ slug: string }>;
}

export async function generateStaticParams() {
  try {
    const res = await getVacancies();
    return res.data.map((v) => ({ slug: v.slug }));
  } catch {
    return [];
  }
}

export default async function VacancyPage({ params }: Props) {
  const { slug } = await params;

  let vacancy;
  try {
    const res = await getVacancyBySlug(slug);
    vacancy = res.data?.[0];
  } catch {
    notFound();
  }

  if (!vacancy) notFound();

  return (
    <div className="w-full min-h-screen bg-white">

      {/* Верхня рожева смуга */}
      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <Link
            href="/about/vacancies"
            className="flex items-center justify-center gap-2 text-[17px] font-extrabold text-white transition-opacity hover:opacity-80 w-full"
          >
            ← Всі вакансії
          </Link>
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">

        {/* Бейдж */}
        <span
          className="inline-block text-white text-[11px] font-extrabold uppercase tracking-[0.1em] px-4 py-1.5 rounded-lg mb-5"
          style={{ background: "#0E95F7" }}
        >
          Вакансія
        </span>

        {/* Заголовок */}
        <h1 className="text-[34px] md:text-[40px] font-black text-gray-900 mb-5 leading-tight">
          {vacancy.title}
        </h1>

        {/* Дата */}
        <div
          className="flex items-center gap-3 mb-10 pb-7"
          style={{ borderBottom: "2px solid #fde8f1" }}
        >
          <div
            className="w-1 h-6 rounded-full flex-shrink-0"
            style={{ background: "#FF7AAD" }}
          />
          <p className="text-gray-400 text-[14px] font-semibold">
            {formatDate(vacancy.timePublishedAt ?? vacancy.publishedAt)}
          </p>
        </div>

        {/* Опис */}
        <div className="prose prose-lg max-w-none text-[16px] leading-relaxed text-gray-700">
          <RichTextRenderer content={vacancy.description} />
        </div>

        {/* Контактний блок */}
        {vacancy.contactNumber && (
          <div
            className="mt-14 p-8 rounded-2xl flex flex-col gap-4"
            style={{ background: "#e8f4fe", border: "2px solid #b5d4f4" }}
          >
            <p
              className="text-[11px] font-extrabold uppercase tracking-[0.12em]"
              style={{ color: "#0E95F7" }}
            >
              Контакт для зв'язку
            </p>
            <a
              href={`tel:${vacancy.contactNumber}`}
              className="inline-flex items-center gap-4 transition-opacity hover:opacity-70"
            >
              <span
                className="flex items-center justify-center w-12 h-12 rounded-full flex-shrink-0"
                style={{ background: "#FF7AAD" }}
              >
                <FaPhone className="text-white text-[18px]" />
              </span>
              <span
                className="text-[22px] font-black"
                style={{ color: "#FF7AAD" }}
              >
                {vacancy.contactNumber}
              </span>
            </a>
          </div>
        )}
      </article>

      {/* Нижня рожева смуга */}
      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <Link
            href="/about/vacancies"
            className="flex items-center justify-center gap-2 text-[17px] font-extrabold text-white transition-opacity hover:opacity-80 w-full"
          >
            ← Всі вакансії
          </Link>
        </div>
      </div>

    </div>
  );
}