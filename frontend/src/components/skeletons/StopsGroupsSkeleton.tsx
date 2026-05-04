export default function StopsGroupsSkeleton() {
  return (
    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
      {Array.from({ length: 4 }).map((_, i) => (
        <div
          key={i}
          className="bg-white rounded-2xl animate-pulse overflow-hidden border-2 border-[#e8f4fe]"
        >
          <div className="p-4 flex flex-col gap-3">
            <div className="h-5 rounded-full w-1/3 bg-[#e8f4fe]" />
            {Array.from({ length: 5 }).map((_, j) => (
              <div key={j} className="h-3.5 rounded-full w-full bg-[#f0f8ff]" />
            ))}
          </div>
        </div>
      ))}
    </div>
  );
}
