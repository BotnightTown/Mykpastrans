import { Schedule } from '@/types/schedule.types';

interface Props {
  routeNumber: string;
  schedules: Schedule[];
  direction: 'Туди' | 'Назад';
}

export default function ScheduleTable({ routeNumber, schedules, direction }: Props) {
  const filtered = schedules?.filter(s => s.route.number === routeNumber) || [];

  let stops = Array.from(new Set(filtered.map(s => s.stop.name)));
  if (direction === 'Назад') stops = stops.slice().reverse();

  const rows: Record<string, string>[] = [];
  filtered.forEach((s, i) => {
    if (!rows[i]) rows[i] = {};
    rows[i][s.stop.name] = s.time;
  });

  const startStop = stops[0] || '';
  const endStop = stops[stops.length - 1] || '';

  return (
    <div>
      <div className="mb-3 text-2xl font-bold text-center flex items-center justify-center gap-4">
        <span className="text-blue-600">{startStop}</span>

        <span className="text-gray-400 font-light"> — </span>

        <span className="text-[#e65e92]">{endStop}</span>
      </div>

      <table className="w-full table-auto border-collapse text-center">
        <thead className="bg-gray-100">
          <tr>
            <th className="border p-1 text-sm font-semibold">
              <div
                className="inline-block text-center"
                style={{
                  writingMode: 'vertical-rl',
                  transform: 'rotate(180deg)',
                  minWidth: '20px',
                  whiteSpace: 'normal',
                  wordBreak: 'break-word',
                }}
              >
                № випуску
              </div>
            </th>

            {stops.map(stop => (
              <th key={stop} className="border p-1 text-sm font-semibold">
                <div
                  className="inline-block text-center"
                  style={{
                    writingMode: 'vertical-rl',
                    transform: 'rotate(180deg)',
                    minWidth: '40px',
                    maxHeight: '150px',
                    whiteSpace: 'normal',
                    wordBreak: 'break-word',
                  }}
                  title={stop}
                >
                  {stop}
                </div>
              </th>
            ))}
          </tr>
        </thead>

        <tbody>
          {rows.map((row, i) => (
            <tr key={i} className="transition-colors hover:bg-pink-100">
              <td className="border p-1 text-sm font-medium">{i + 1}</td>
              {stops.map(stop => (
                <td key={stop} className="border p-1 text-sm">
                  {row[stop] || '-'}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}