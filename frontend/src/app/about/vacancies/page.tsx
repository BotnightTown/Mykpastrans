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
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Вакансії" />
        </div>
      </section>

      <section className="max-w-6xl mx-auto px-8 py-12">
        {vacancies.length === 0 ? (
          <div className="text-center py-24">
            <p className="text-gray-400 text-xl mb-2">
              Актуальних вакансій немає
            </p>
            <p className="text-gray-400 text-sm">Слідкуйте за оновленнями</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {vacancies.map((vacancy) => (
              <VacancyCard key={vacancy.id} vacancy={vacancy} />
            ))}
          </div>
        )}
      </section>
    </main>
  );
}
