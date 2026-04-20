import SkeletonBlock from "./SkeletonBlock";

export default function ArticlePageSkeleton() {
  return (
    <div className="w-full min-h-screen bg-white">
      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <SkeletonBlock className="h-8 w-60 mx-auto rounded-full bg-[rgba(255,255,255,0.35)]" />
        </div>
      </div>

      <article className="max-w-4xl mx-auto px-8 py-12">
        <SkeletonBlock className="h-7 w-28 rounded-lg bg-[#dceefb]" />
        <SkeletonBlock className="h-12 w-full mt-5 rounded-full" />
        <SkeletonBlock className="h-12 w-4/5 mt-4 rounded-full" />

        <div className="flex items-center gap-3 mb-8 mt-6 pb-8 border-b-2 border-[#e8f4fe]">
          <SkeletonBlock className="h-5 w-1 rounded-full bg-[#fde8f2]" />
          <SkeletonBlock className="h-4 w-36 rounded-full bg-[#fde8f2]" />
        </div>

        <SkeletonBlock className="h-80 w-full rounded-2xl" />
        <SkeletonBlock className="h-24 w-full mt-8 rounded-2xl bg-[#fde8f2]" />

        <div className="mt-8 flex flex-col gap-4">
          {Array.from({ length: 8 }).map((_, index) => (
            <SkeletonBlock
              key={index}
              className={`h-5 rounded-full ${
                index % 3 === 0 ? "w-4/5" : "w-full"
              }`}
            />
          ))}
        </div>
      </article>

      <div style={{ background: "#FF7AAD" }}>
        <div className="max-w-4xl mx-auto px-8 py-3">
          <SkeletonBlock className="h-8 w-60 mx-auto rounded-full bg-[rgba(255,255,255,0.35)]" />
        </div>
      </div>
    </div>
  );
}
