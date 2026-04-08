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
        <div className="mb-3 text-2xl font-bold text-center">
          <span className="text-[#e65e92]">{directionData.endpoint_name}</span>
        </div>
      )}

      <table className="border-separate border-spacing-1 border border-(--primary-blue) w-full table-auto bg-(--primary-blue)">
        <thead>
          <tr>
            <th className="border border-(--primary-blue) px-2 py-1 text-left text-xs md:text-sm bg-(--primary-blue) text-white">
              №
            </th>
            <th className="border border-(--primary-blue) px-2 py-1 text-left text-xs md:text-sm bg-(--primary-blue) text-white">
              Час
            </th>
            <th className="border border-(--primary-blue) px-2 py-1 text-left text-xs md:text-sm bg-(--primary-blue) text-white">
              Примітка
            </th>
            <th className="border border-(--primary-blue) px-2 py-1 text-left text-xs md:text-sm bg-(--primary-blue) text-white">
              Короткий
            </th>
          </tr>
        </thead>

        <tbody>
          {trips.length === 0 ? (
            <tr>
              <td
                colSpan={4}
                className="border border-(--primary-blue) px-2 py-1 text-xs md:text-sm bg-white text-center text-gray-400"
              >
                Рейсів не знайдено
              </td>
            </tr>
          ) : (
            trips.map((trip, i) => (
              <tr key={trip.id}>
                <td className="border border-(--primary-blue) px-2 py-1 text-xs md:text-sm bg-white">
                  {i + 1}
                </td>
                <td className="border border-(--primary-blue) px-2 py-1 text-xs md:text-sm bg-white">
                  {trip.time}
                </td>
                <td className="border border-(--primary-blue) px-2 py-1 text-xs md:text-sm bg-white">
                  {trip.note ?? "—"}
                </td>
                <td className="border border-(--primary-blue) px-2 py-1 text-xs md:text-sm bg-white">
                  {trip.is_short ? "Так" : "Ні"}
                </td>
              </tr>
            ))
          )}
        </tbody>
      </table>
    </div>
  );
}
