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
    <div className="w-full min-h-screen bg-(--light-bg)">
      <div className="bg-white border-b border-gray-200">
        <div className="max-w-4xl mx-auto px-8 py-4">
          <Link
            href="/about/vacancies"
            className="text-sm text-(--primary-blue) font-semibold hover:underline flex items-center gap-1"
          >
            ← Всі вакансії
          </Link>
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">
        <span className="inline-block bg-(--primary-blue) text-white text-xs font-bold uppercase tracking-wider px-3 py-1 mb-6">
          Вакансія
        </span>

        <h1 className="text-3xl md:text-4xl font-black text-(--dark-navy) mb-4 leading-tight">
          {vacancy.title}
        </h1>

        <p className="text-gray-500 text-sm mb-8 border-b border-gray-200 pb-8">
          {formatDate(vacancy.timePublishedAt ?? vacancy.publishedAt)}
        </p>

        <RichTextRenderer content={vacancy.description} />

        {vacancy.contactNumber && (
          <div className="mt-10 p-6 bg-white border border-gray-200">
            <p className="text-sm text-gray-500 mb-3 font-semibold uppercase tracking-wider">
              Контакт для зв'язку
            </p>
            <a
              href={`tel:${vacancy.contactNumber}`}
              className="inline-flex items-center gap-3 text-xl font-bold text-(--primary-blue) hover:underline"
            >
              <FaPhone />
              {vacancy.contactNumber}
            </a>
          </div>
        )}
      </article>
    </div>
  );
}
