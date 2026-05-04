import SkeletonBlock from "./SkeletonBlock";

export default function HistoryPageSkeleton() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SkeletonBlock className="h-10 w-96 max-w-full" />
        </div>
      </section>

      <section className="px-[5%] py-16">
        <div className="max-w-6xl mx-auto flex flex-col gap-20">
          <div className="flex flex-col gap-4">
            <SkeletonBlock className="h-10 w-80 max-w-full" />
            <SkeletonBlock className="h-5 w-full rounded-full" />
            <SkeletonBlock className="h-5 w-full rounded-full" />
            <SkeletonBlock className="h-5 w-5/6 rounded-full" />
          </div>

          {Array.from({ length: 3 }).map((_, index) => (
            <div
              key={index}
              className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center"
            >
              <div
                className={index === 1 ? "order-2 lg:order-1" : undefined}
              >
                <SkeletonBlock className="h-10 w-72 max-w-full" />
                <div className="mt-6 flex flex-col gap-4">
                  <SkeletonBlock className="h-5 w-full rounded-full" />
                  <SkeletonBlock className="h-5 w-full rounded-full" />
                  <SkeletonBlock className="h-5 w-4/5 rounded-full" />
                  <SkeletonBlock className="h-5 w-3/4 rounded-full" />
                </div>
              </div>
              <SkeletonBlock
                className={`h-80 w-full rounded-lg ${
                  index === 1 ? "order-1 lg:order-2" : ""
                }`}
              />
            </div>
          ))}

          <div>
            <SkeletonBlock className="h-10 w-52" />
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-8">
              {Array.from({ length: 6 }).map((_, index) => (
                <SkeletonBlock key={index} className="h-64 w-full rounded-lg" />
              ))}
            </div>
          </div>
        </div>
      </section>
    </main>
  );
}
