import SkeletonBlock from "./SkeletonBlock";

export default function VacanciesPageSkeleton() {
  return (
    <main>
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SkeletonBlock className="h-10 w-64 max-w-full" />
        </div>
      </section>

      <section className="max-w-6xl mx-auto px-8 py-12">
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {Array.from({ length: 6 }).map((_, index) => (
            <div
              key={index}
              className="rounded-3xl border-2 border-[#fde8f2] bg-white p-6"
            >
              <div className="flex flex-col gap-4">
                <SkeletonBlock className="h-4 w-20 rounded-full" />
                <SkeletonBlock className="h-8 w-full rounded-full" />
                <SkeletonBlock className="h-4 w-full rounded-full" />
                <SkeletonBlock className="h-4 w-2/3 rounded-full" />
                <SkeletonBlock className="h-11 w-36 rounded-xl" />
              </div>
            </div>
          ))}
        </div>
      </section>
    </main>
  );
}
