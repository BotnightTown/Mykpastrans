import SectionTitle from "@/components/ui/SectionTitle";
import VacancyCard from "@/components/VacancyCard";
import { getVacancies } from "@/services/vacancy.service";
import { StrapiVacancy } from "@/types/vacancy.types";

export default async function VacanciesPage() {
  let vacancies: StrapiVacancy[] = [];
  try {
    const res = await getVacancies();
    vacancies = res.data;
  } catch {
    vacancies = [];
  }

  return (
    <main>
      {/* Заголовок — без змін */}
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Вакансії" />
        </div>
      </section>

      <section className="max-w-6xl mx-auto px-8 py-12">
        {vacancies.length === 0 ? (
          <div className="text-center py-24 flex flex-col items-center gap-4">
            <div className="w-16 h-16 rounded-2xl flex items-center justify-center bg-[#fff0f6]">
              <svg
                className="w-8 h-8 text-[#FF7AAD]"
                fill="none"
                stroke="currentColor"
                strokeWidth={1.5}
                viewBox="0 0 24 24"
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M20.25 14.15v4.25c0 1.094-.787 2.036-1.872 2.18-2.087.277-4.216.42-6.378.42s-4.291-.143-6.378-.42c-1.085-.144-1.872-1.086-1.872-2.18v-4.25m16.5 0a2.18 2.18 0 0 0 .75-1.661V8.706c0-1.081-.768-2.015-1.837-2.175a48.114 48.114 0 0 0-3.413-.387m4.5 8.006c-.194.165-.42.295-.673.38A23.978 23.978 0 0 1 12 15.75c-2.648 0-5.195-.429-7.577-1.22a2.016 2.016 0 0 1-.673-.38m0 0A2.18 2.18 0 0 1 3 12.489V8.706c0-1.081.768-2.015 1.837-2.175a48.111 48.111 0 0 1 3.413-.387m7.5 0V5.25A2.25 2.25 0 0 0 13.5 3h-3a2.25 2.25 0 0 0-2.25 2.25v.894m7.5 0a48.667 48.667 0 0 0-7.5 0"
                />
              </svg>
            </div>
            <p className="font-bold text-lg text-[#FF7AAD]">
              Актуальних вакансій немає
            </p>
            <p className="text-gray-400 text-sm">Слідкуйте за оновленнями</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {vacancies.map((vacancy, index) => (
              <VacancyCard key={vacancy.id} vacancy={vacancy} index={index} />
            ))}
          </div>
        )}
      </section>
    </main>
  );
}