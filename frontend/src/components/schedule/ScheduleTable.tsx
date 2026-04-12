import { Route } from "@/types/schedule.types";

interface Props {
  routeNumber: string;
  routes: Route[];
  direction: "Туди" | "Назад";
  dayFilter: string;
}

export default function ScheduleTable({
  routeNumber,
  routes,
  direction,
  dayFilter,
}: Props) {
  const route = routes.find((r) => r.number === routeNumber);
  const isWeekendFilter = dayFilter === "Вихідні та святкові дні";

  const filteredSchedule = (() => {
    const filtered =
      route?.schedule.filter((dir) => dir.isWeekend === isWeekendFilter) ?? [];

    if (filtered.length === 0) {
      return route?.schedule.filter((dir) => dir.isWeekend === false) ?? [];
    }

    return filtered;
  })();

  const scheduleIndex = direction === "Туди" ? 0 : 1;
  const directionData = filteredSchedule[scheduleIndex];

  const trips = [...(directionData?.trips ?? [])].sort((a, b) =>
    a.time.localeCompare(b.time),
  );

  return (
    <div>
      {directionData && (
        <div className="mb-5 text-center">
          <span className="text-3xl md:text-4xl font-black text-[#e65e92] tracking-tight drop-shadow-xs">
            {directionData.endpoint_name}
          </span>
        </div>
      )}

      <div className="overflow-hidden rounded-lg border-2 border-[#378ADD] shadow-md">
        <table className="w-full table-auto border-collapse">
          <thead>
            <tr className="bg-[#1a8fff]">
              <th className="px-4 py-3 text-left text-base md:text-lg font-bold text-white tracking-wide uppercase">
                №
              </th>
              <th className="px-4 py-3 text-left text-base md:text-lg font-bold text-white tracking-wide uppercase">
                Час
              </th>
              <th className="px-4 py-3 text-left text-base md:text-lg font-bold text-white tracking-wide uppercase">
                Примітка
              </th>
              <th className="px-4 py-3 text-left text-base md:text-lg font-bold text-white tracking-wide uppercase">
                Короткий
              </th>
            </tr>
          </thead>

          <tbody>
            {trips.length === 0 ? (
              <tr>
                <td
                  colSpan={4}
                  className="px-4 py-6 text-base bg-white text-center text-gray-400"
                >
                  Рейсів не знайдено
                </td>
              </tr>
            ) : (
              trips.map((trip, i) => (
                <tr
                  key={trip.id}
                  className={`border-b border-[#dceefb] transition-colors duration-150 ${
                    i % 2 === 0 ? "bg-white" : "bg-[#f0f7ff]"
                  } hover:bg-[#dceefb]`}
                >
                  <td className="px-4 py-3 text-base md:text-lg text-[#185FA5] font-semibold">
                    {i + 1}
                  </td>
                  <td className="px-4 py-3 text-base md:text-lg font-bold text-[#1a1a2e]">
                    {trip.time}
                  </td>
                  <td className="px-4 py-3 text-base md:text-lg text-gray-600">
                    {trip.note ?? "—"}
                  </td>
                  <td className="px-4 py-3 text-base md:text-lg">
                    {trip.is_short ? (
                      <span className="inline-block bg-[#f9a8d4] text-[#9d174d] text-sm font-bold px-4 py-1.5 rounded-md">
                        Так
                      </span>
                    ) : (
                      <span className="inline-block bg-[#e8e8e8] text-[#888] text-sm font-bold px-4 py-1.5 rounded-md">
                        Ні
                      </span>
                    )}
                  </td>
                </tr>
              ))
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}