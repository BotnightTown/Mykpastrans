import SkeletonBlock from "./SkeletonBlock";

export default function ScheduleTableSkeleton() {
  return (
    <div>
      <div className="mb-5 text-center flex justify-center">
        <SkeletonBlock className="h-10 w-64 rounded-full bg-[#fde8f2]" />
      </div>

      <div className="overflow-hidden rounded-lg border-2 border-[#378ADD] shadow-md">
        <div className="grid grid-cols-4 bg-(--primary-blue) gap-4 px-4 py-3">
          {Array.from({ length: 4 }).map((_, index) => (
            <SkeletonBlock
              key={index}
              className="h-5 w-16 rounded-full bg-[rgba(255,255,255,0.35)]"
            />
          ))}
        </div>

        <div className="bg-white">
          {Array.from({ length: 8 }).map((_, rowIndex) => (
            <div
              key={rowIndex}
              className={`grid grid-cols-4 gap-4 px-4 py-3 border-b border-[#dceefb] ${
                rowIndex % 2 === 0 ? "bg-white" : "bg-[#f0f7ff]"
              }`}
            >
              <SkeletonBlock className="h-5 w-10 rounded-full" />
              <SkeletonBlock className="h-5 w-16 rounded-full" />
              <SkeletonBlock className="h-5 w-full rounded-full" />
              <SkeletonBlock className="h-8 w-16 rounded-md" />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
