import { formatCurrentDate } from "@/utils/date";

interface Props {
  dayFilter: string;
  setDayFilter: (value: string) => void;
}

const OPTIONS = ["Робочі дні", "Вихідні та святкові дні"];

export default function Filters({ dayFilter, setDayFilter }: Props) {
  return (
    <div className="flex flex-col sm:flex-row gap-3 items-start sm:items-center">
      <div className="flex gap-1">
        {OPTIONS.map((option) => (
          <button
            key={option}
            onClick={() => setDayFilter(option)}
            className={`px-3 py-2 text-sm font-semibold cursor-pointer transition-all duration-200 whitespace-nowrap border-b-2 ${
              dayFilter === option
                ? "border-[#0E95F7] text-[#0E95F7]"
                : "border-transparent text-gray-400 hover:text-gray-600 hover:border-gray-300"
            }`}
          >
            {option}
          </button>
        ))}
      </div>

      <span className="text-gray-400 text-sm">
        {formatCurrentDate()}
      </span>
    </div>
  );
}