import SkeletonBlock from "./SkeletonBlock";
import ScheduleTableSkeleton from "./ScheduleTableSkeleton";

export default function SchedulePageSkeleton() {
  return (
    <div className="flex flex-col md:flex-row min-h-screen bg-white">
      <div className="md:w-28 w-full md:h-screen shrink-0 border-r border-[#dceefb] bg-[#f8fbff] p-3">
        <div className="flex md:flex-col gap-2 overflow-hidden">
          {Array.from({ length: 8 }).map((_, index) => (
            <SkeletonBlock
              key={index}
              className="h-11 w-16 md:w-full shrink-0 rounded-xl"
            />
          ))}
        </div>
      </div>

      <div className="flex-1 p-4 md:p-6 flex flex-col gap-4">
        <div>
          <SkeletonBlock className="h-11 w-80 max-w-full rounded-full bg-[#fde8f2]" />
          <SkeletonBlock className="h-5 w-64 max-w-full mt-3 rounded-full" />
        </div>

        <div className="h-px bg-[#dceefb]" />

        <div className="flex flex-wrap gap-3">
          {Array.from({ length: 3 }).map((_, index) => (
            <SkeletonBlock key={index} className="h-10 w-40 rounded-xl" />
          ))}
        </div>

        <div className="flex gap-3">
          <SkeletonBlock className="h-11 w-28 rounded-xl bg-[#fde8f2]" />
          <SkeletonBlock className="h-11 w-28 rounded-xl" />
        </div>

        <div className="flex-1 overflow-auto">
          <ScheduleTableSkeleton />
        </div>
      </div>
    </div>
  );
}
