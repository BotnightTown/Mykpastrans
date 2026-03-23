import { useState } from 'react';
import { formatCurrentDate, isWeekend } from '@/utils/date';

interface Props {
  dayFilter: string;
  setDayFilter: (value: string) => void;
}

export default function Filters({ dayFilter, setDayFilter }: Props) {
  const [selectedDate, setSelectedDate] = useState(new Date().toISOString().split('T')[0]);

  return (
    <div className="flex flex-col sm:flex-row gap-2 sm:gap-4 mb-4 items-start sm:items-center">
      <select
        className="border p-2 rounded w-full sm:w-auto"
        value={dayFilter}
        onChange={(e) => setDayFilter(e.target.value)}
      >
        <option>Робочі дні</option>
        <option>Вихідні та святкові дні</option>
      </select>

      <input
        type="date"
        className="border p-2 rounded w-full sm:w-auto"
        value={selectedDate}
        onChange={(e) => setSelectedDate(e.target.value)}
      />

      <span className="text-gray-500 w-full sm:w-auto text-left sm:text-left">
        {formatCurrentDate()}
      </span>
    </div>
  );
}