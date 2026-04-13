"use client";

import { StrapiVacancy } from "@/types/vacancy.types";
import { formatDate } from "@/utils/date";
import Link from "next/link";
import { FaPhone } from "react-icons/fa6";

interface VacancyCardProps {
  vacancy: StrapiVacancy;
  index: number;
}

export default function VacancyCard({ vacancy, index }: VacancyCardProps) {
  const isPink = index % 2 !== 0;
  const lineColor = isPink ? "#FF7AAD" : "#0E95F7";

  return (
    <article
      className="bg-white rounded-2xl border border-gray-100 p-7 flex flex-col gap-4 transition-shadow hover:shadow-xl hover:shadow-gray-200/60"
      style={{ borderBottom: `4px solid ${lineColor}` }}
    >
      <p className="text-[11px] font-bold uppercase tracking-widest text-gray-400">
        {formatDate(vacancy.timePublishedAt ?? vacancy.publishedAt)}
      </p>

      <h3 className="text-[19px] font-bold leading-snug text-[#0E95F7]">
        {vacancy.title}
      </h3>

      {vacancy.contactNumber && (
        <a
          href={`tel:${vacancy.contactNumber}`}
          className="inline-flex items-center gap-2 text-[15px] font-semibold text-gray-600 transition-opacity w-fit hover:opacity-70"
        >
          <span className="flex items-center justify-center w-6 h-6 rounded-full bg-[#fff0f6]">
            <FaPhone className="text-[#FF7AAD] text-[10px]" />
          </span>
          {vacancy.contactNumber}
        </a>
      )}

      <Link
        href={`/about/vacancies/${vacancy.slug}`}
        className="mt-auto inline-block bg-[#0E95F7] text-white text-[12px] font-bold uppercase tracking-widest px-5 py-2.5 rounded-lg transition-opacity w-fit hover:opacity-80 active:scale-95"
      >
        Детальніше
      </Link>
    </article>
  );
}