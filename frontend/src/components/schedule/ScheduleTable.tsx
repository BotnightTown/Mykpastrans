import { Route } from "@/types/schedule.types";

interface Props {
  routeNumber: string;
  routes: Route[];
  direction: "Туди" | "Назад";
}

export default function ScheduleTable({
  routeNumber,
  routes,
  direction,
}: Props) {
  const route = routes.find((r) => r.number === routeNumber);
  const directionData = route?.schedule.find(
    (d) => d.endpoint_name === direction,
  );
  const trips = directionData?.trips ?? [];

  return (
    <div>
      <table className="w-full table-auto border-collapse text-center">
        <thead className="bg-gray-100">
          <tr>
            <th className="border p-2 text-sm font-semibold">№</th>
            <th className="border p-2 text-sm font-semibold">Час</th>
            <th className="border p-2 text-sm font-semibold">Примітка</th>
            <th className="border p-2 text-sm font-semibold">Короткий</th>
          </tr>
        </thead>

        <tbody>
          {trips.length === 0 ? (
            <tr>
              <td colSpan={4} className="border p-4 text-gray-400">
                Рейсів не знайдено
              </td>
            </tr>
          ) : (
            trips.map((trip, i) => (
              <tr key={trip.id} className="transition-colors hover:bg-pink-100">
                <td className="border p-2 text-sm font-medium">{i + 1}</td>
                <td className="border p-2 text-sm">{trip.time}</td>
                <td className="border p-2 text-sm">{trip.note ?? "—"}</td>
                <td className="border p-2 text-sm">
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
