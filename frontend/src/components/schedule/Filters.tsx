import { formatCurrentDate } from "@/utils/date";

interface Props {
  dayFilter: string;
  setDayFilter: (value: string) => void;
}

export default function Filters({ dayFilter, setDayFilter }: Props) {
  return (
    <div className="flex flex-col sm:flex-row gap-2 sm:gap-4 mb-4 items-start sm:items-center">
      <select
        className="border p-2 rounded w-full sm:w-auto cursor-pointer"
        value={dayFilter}
        onChange={(e) => setDayFilter(e.target.value)}
      >
        <option value="Робочі дні">Робочі дні</option>
        <option value="Вихідні та святкові дні">Вихідні та святкові дні</option>
      </select>

      <span className="text-gray-500 w-full sm:w-auto text-left sm:text-left">
        {formatCurrentDate()}
      </span>
    </div>
  );
}
