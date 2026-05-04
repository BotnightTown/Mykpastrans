import SkeletonBlock from "./SkeletonBlock";

export default function ContactsPageSkeleton() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-350 mx-auto">
          <SkeletonBlock className="h-10 w-72 max-w-full" />
        </div>
      </section>

      <section className="px-[5%] py-16">
        <div className="max-w-350 mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10 lg:gap-16">
          <div className="flex flex-col gap-5">
            <SkeletonBlock className="h-10 w-56" />
            {Array.from({ length: 3 }).map((_, index) => (
              <div
                key={index}
                className="rounded-2xl border-2 border-[#e8f4fe] bg-[#f8fbff] p-5"
              >
                <div className="flex flex-col gap-3">
                  <SkeletonBlock className="h-3 w-36 rounded-full" />
                  <SkeletonBlock className="h-10 w-3/4 rounded-full" />
                  <SkeletonBlock className="h-4 w-1/2 rounded-full" />
                </div>
              </div>
            ))}
          </div>

          <div className="rounded-2xl border-2 border-[#e8f4fe] bg-white p-6">
            <div className="flex flex-col gap-4">
              <SkeletonBlock className="h-8 w-52" />
              {Array.from({ length: 4 }).map((_, index) => (
                <SkeletonBlock key={index} className="h-12 w-full rounded-xl" />
              ))}
              <SkeletonBlock className="h-28 w-full rounded-xl" />
              <SkeletonBlock className="h-12 w-40 rounded-xl" />
            </div>
          </div>
        </div>
      </section>

      <section
        className="w-full h-80 md:h-100 mt-4"
        style={{ borderTop: "4px solid #0E95F7" }}
      >
        <SkeletonBlock className="h-full w-full rounded-none" />
      </section>
    </main>
  );
}
