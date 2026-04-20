import SkeletonBlock from "./SkeletonBlock";
import NewsGridSkeleton from "./NewsGridSkeleton";

export default function NewsPageSkeleton() {
  return (
    <div className="w-full min-h-screen bg-white">
      <div className="relative overflow-hidden py-14 px-8 bg-gradient-to-r from-(--primary-blue) via-(--primary-blue) to-[#e8609a]">
        <div className="max-w-6xl mx-auto relative z-10">
          <SkeletonBlock className="h-12 w-52 rounded-full bg-[rgba(255,255,255,0.35)]" />
          <SkeletonBlock className="h-5 w-80 max-w-full mt-4 rounded-full bg-[rgba(255,255,255,0.25)]" />
        </div>
      </div>

      <div className="max-w-6xl mx-auto px-8 py-8 flex flex-col gap-6">
        <div className="flex flex-col md:flex-row gap-3 items-start md:items-center">
          <SkeletonBlock className="h-12 flex-1 w-full rounded-xl border-2 border-[#fde8f2]" />
          <div className="flex gap-2 flex-wrap w-full md:w-auto">
            {Array.from({ length: 4 }).map((_, index) => (
              <SkeletonBlock key={index} className="h-10 w-24 rounded-lg" />
            ))}
          </div>
        </div>

        <SkeletonBlock className="h-4 w-48 rounded-full" />
        <NewsGridSkeleton />
      </div>
    </div>
  );
}
