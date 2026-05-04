export default function NewsGridSkeleton() {
  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
      {Array.from({ length: 6 }).map((_, i) => (
        <div
          key={i}
          className="bg-white rounded-2xl animate-pulse overflow-hidden border-2 border-[#fde8f2]"
        >
          <div className="w-full h-52 bg-[#fde8f2]" />
          <div className="p-6 flex flex-col gap-3">
            <div className="h-3 rounded-full w-1/3 bg-[#fde8f2]" />
            <div className="h-5 rounded-full w-3/4 bg-[#fde8f2]" />
            <div className="h-4 rounded-full w-full bg-[#fde8f2]" />
            <div className="h-4 rounded-full w-2/3 bg-[#fde8f2]" />
          </div>
        </div>
      ))}
    </div>
  );
}
