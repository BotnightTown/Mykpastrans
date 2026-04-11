import { StrapiVacancy } from "@/types/vacancy.types";
import { formatDate } from "@/utils/date";
import Link from "next/link";
import { FaPhone } from "react-icons/fa6";

interface VacancyCardProps {
  vacancy: StrapiVacancy;
}

export default function VacancyCard({ vacancy }: VacancyCardProps) {
  return (
    <article className="bg-white border border-gray-200 p-6 flex flex-col gap-4 hover:shadow-md transition-shadow">
      <div className="flex flex-col gap-1">
        <p className="text-xs text-gray-400 uppercase tracking-wider font-semibold">
          {formatDate(vacancy.timePublishedAt ?? vacancy.publishedAt)}
        </p>
        <h3 className="text-xl font-bold text-(--primary-blue)">
          {vacancy.title}
        </h3>
      </div>

      {vacancy.contactNumber && (
        <a
          href={`tel:${vacancy.contactNumber}`}
          className="inline-flex items-center gap-2 text-sm font-semibold text-gray-700 hover:text-(--primary-blue) transition-colors w-fit"
        >
          <FaPhone className="text-(--primary-blue)" />
          {vacancy.contactNumber}
        </a>
      )}

      <Link
        href={`/about/vacancies/${vacancy.slug}`}
        className="mt-auto inline-block bg-(--primary-blue) text-white text-xs font-bold uppercase tracking-wider px-5 py-2.5 hover:bg-blue-700 transition-colors w-fit"
      >
        Детальніше
      </Link>
    </article>
  );
}
