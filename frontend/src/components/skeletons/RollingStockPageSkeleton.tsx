import SkeletonBlock from "./SkeletonBlock";

export default function RollingStockPageSkeleton() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SkeletonBlock className="h-10 w-72 max-w-full" />
        </div>
      </section>

      <div className="max-w-6xl mx-auto px-8 flex flex-col gap-12 py-16">
        <section className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {Array.from({ length: 6 }).map((_, index) => (
            <div
              key={index}
              className="overflow-hidden rounded-2xl border-2 border-[#e8f4fe] bg-white"
            >
              <SkeletonBlock className="h-52 w-full rounded-none" />
              <div className="p-6 flex flex-col gap-4">
                <SkeletonBlock className="h-6 w-2/3 rounded-full" />
                <SkeletonBlock className="h-4 w-full rounded-full" />
                <SkeletonBlock className="h-4 w-5/6 rounded-full" />
                <SkeletonBlock className="h-4 w-2/3 rounded-full" />
              </div>
            </div>
          ))}
        </section>

        <section className="bg-gray-50 p-10 rounded-xl border border-gray-200">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            {Array.from({ length: 3 }).map((_, index) => (
              <div key={index} className="flex flex-col items-center gap-3">
                <SkeletonBlock className="h-10 w-20 rounded-full" />
                <SkeletonBlock className="h-4 w-32 rounded-full" />
              </div>
            ))}
          </div>
        </section>
      </div>
    </main>
  );
}
