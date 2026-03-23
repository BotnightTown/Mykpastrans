'use client';

import { useEffect, useState } from 'react';
import RouteSidebar from './RouteSidebar';
import ScheduleTable from './ScheduleTable';
import Filters from './Filters';
import DirectionSwitch from './DirectionSwitch';
import { formatCurrentDate, isWeekend } from '@/utils/date';
import { getSchedules } from '@/services/schedule.service';
import { Schedule, Route } from '@/types/schedule.types';

export default function ScheduleLayout() {
  const [selectedRoute, setSelectedRoute] = useState<string | null>(null);
  const [dayFilter, setDayFilter] = useState(
    isWeekend() ? 'Вихідні та святкові дні' : 'Робочі дні'
  );
  const [direction, setDirection] = useState<'Туди' | 'Назад'>('Туди');
  const [schedules, setSchedules] = useState<Schedule[]>([]);
  const [routes, setRoutes] = useState<Route[]>([]);

  const currentDate = formatCurrentDate();

  useEffect(() => {
    async function fetchData() {
      const data = await getSchedules();
      setSchedules(data);

      const uniqueRoutes: Route[] = Array.from(
        new Map(data.map(s => [s.route.id, s.route])).values()
      );
      setRoutes(uniqueRoutes);

      if (!selectedRoute && uniqueRoutes.length > 0) {
        setSelectedRoute(uniqueRoutes[0].number);
      }
    }
    fetchData();
  }, [selectedRoute]);

  if (!selectedRoute) return <div className="text-center mt-20 text-lg">Завантаження...</div>;

  return (
    <div className="flex flex-col md:flex-row min-h-screen bg-white">
      <div className="md:w-28 w-full md:h-screen flex-shrink-0">
        <RouteSidebar
          selectedRoute={selectedRoute}
          onSelect={setSelectedRoute}
          routes={routes}
        />
      </div>

      <div className="flex-1 p-4 md:p-6 flex flex-col gap-4">
        <div className="text-center md:text-left">
          <h1 className="text-3xl md:text-4xl font-black mb-1 text-[#e65e92]">
            Маршрут №{selectedRoute}
          </h1>
          <p className="text-gray-600 text-sm md:text-base">
            {currentDate} · {dayFilter} · Діє з 26.02.2026
          </p>
        </div>

        <div className="flex flex-col -mb-8 sm:flex-row gap-4 items-center justify-between">
            <Filters dayFilter={dayFilter} setDayFilter={setDayFilter} />
        </div>
        <div className="flex flex-col sm:flex-row items-center justify-between">
            <DirectionSwitch direction={direction} setDirection={setDirection} />
        </div>

        <div className="flex-1 mt-2 overflow-auto">
          <ScheduleTable
            routeNumber={selectedRoute}
            schedules={schedules}
            direction={direction}
          />
        </div>
      </div>
    </div>
  );
}