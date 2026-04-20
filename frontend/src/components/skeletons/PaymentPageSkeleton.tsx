import SkeletonBlock from "./SkeletonBlock";

export default function PaymentPageSkeleton() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SkeletonBlock className="h-10 w-80 max-w-full" />
        </div>
      </section>

      <section className="px-[5%] py-16">
        <div className="max-w-6xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10">
          {Array.from({ length: 2 }).map((_, index) => (
            <article
              key={index}
              className="bg-white border border-[#e4e4e4] shadow-sm p-8"
            >
              <SkeletonBlock className="h-8 w-56 max-w-full" />
              <div className="mt-6 flex flex-col gap-4">
                <SkeletonBlock className="h-5 w-full rounded-full" />
                <SkeletonBlock className="h-5 w-5/6 rounded-full" />
                <SkeletonBlock className="h-4 w-2/3 rounded-full" />
              </div>
              <SkeletonBlock
                className={`mt-6 w-full rounded-xl ${
                  index === 0 ? "h-75" : "h-28"
                }`}
              />
            </article>
          ))}
        </div>
      </section>

      <section className="px-[5%] pb-20">
        <div className="max-w-6xl mx-auto bg-[#f8f9fa] border border-[#e4e4e4] p-8">
          <SkeletonBlock className="h-8 w-56 max-w-full" />
          <div className="mt-6 flex flex-col gap-4">
            <SkeletonBlock className="h-4 w-full rounded-full" />
            <SkeletonBlock className="h-4 w-5/6 rounded-full" />
          </div>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-x-10 gap-y-3 mt-6">
            {Array.from({ length: 6 }).map((_, index) => (
              <SkeletonBlock key={index} className="h-5 w-full rounded-full" />
            ))}
          </div>
        </div>
      </section>
    </main>
  );
}
