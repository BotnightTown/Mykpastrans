import SkeletonBlock from "./SkeletonBlock";

export default function VacancyPageSkeleton() {
  return (
    <div className="w-full min-h-screen bg-white">
      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <SkeletonBlock className="h-7 w-48 mx-auto rounded-full bg-[rgba(255,255,255,0.35)]" />
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">
        <SkeletonBlock className="h-7 w-28 rounded-lg bg-[#dceefb]" />
        <SkeletonBlock className="h-12 w-full mt-5 rounded-full" />
        <SkeletonBlock className="h-12 w-2/3 mt-4 rounded-full" />

        <div className="flex items-center gap-3 mb-10 mt-6 pb-7 border-b-2 border-[#fde8f1]">
          <SkeletonBlock className="h-6 w-1 rounded-full bg-[#fde8f2]" />
          <SkeletonBlock className="h-4 w-32 rounded-full bg-[#fde8f2]" />
        </div>

        <div className="flex flex-col gap-4">
          {Array.from({ length: 7 }).map((_, index) => (
            <SkeletonBlock
              key={index}
              className={`h-5 rounded-full ${
                index % 3 === 0 ? "w-5/6" : "w-full"
              }`}
            />
          ))}
        </div>

        <div className="mt-14 p-8 rounded-2xl flex flex-col gap-4 bg-[#e8f4fe] border-2 border-[#b5d4f4]">
          <SkeletonBlock className="h-4 w-40 rounded-full" />
          <SkeletonBlock className="h-10 w-52 rounded-full bg-[#fde8f2]" />
        </div>
      </article>

      <div className="bg-(--accent-pink)">
        <div className="max-w-4xl mx-auto px-8 py-3">
          <SkeletonBlock className="h-7 w-48 mx-auto rounded-full bg-[rgba(255,255,255,0.35)]" />
        </div>
      </div>
    </div>
  );
}
