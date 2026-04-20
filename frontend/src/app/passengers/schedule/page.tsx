"use client";

import { useEffect, useState } from "react";
import RouteSidebar from "@/components/schedule/RouteSidebar";
import ScheduleTable from "@/components/schedule/ScheduleTable";
import Filters from "@/components/schedule/Filters";
import DirectionSwitch from "@/components/schedule/DirectionSwitch";
import { SchedulePageSkeleton } from "@/components/skeletons";
import { formatCurrentDate, isWeekend } from "@/utils/date";
import { getRoutes } from "@/services/schedule.service";
import { Route } from "@/types/schedule.types";

export default function SchedulePage() {
  const [selectedRoute, setSelectedRoute] = useState<string | null>(null);
  const [dayFilter, setDayFilter] = useState(
    isWeekend() ? "Вихідні та святкові дні" : "Робочі дні",
  );
  const [direction, setDirection] = useState<"Туди" | "Назад">("Туди");
  const [routes, setRoutes] = useState<Route[]>([]);

  const currentDate = formatCurrentDate();

  useEffect(() => {
    async function fetchData() {
      const data = await getRoutes();
      console.log("Fetched routes:", data);
      setRoutes(data);

      const savedRoute = localStorage.getItem("selectedRoute") || "1";
      setSelectedRoute(savedRoute);
    }
    fetchData();
  }, []);

  const handleRouteSelect = (route: string) => {
    setSelectedRoute(route);
    localStorage.setItem("selectedRoute", route);
  };

  if (!selectedRoute)
    return <SchedulePageSkeleton />;

  return (
    <div className="flex flex-col md:flex-row min-h-screen bg-white">
      <div className="md:w-28 w-full md:h-screen shrink-0">
        <RouteSidebar
          selectedRoute={selectedRoute}
          onSelect={handleRouteSelect}
          routes={routes}
        />
      </div>

      <div className="flex-1 p-4 md:p-6 flex flex-col gap-3">

        <div className="text-left">
          <h1 className="text-3xl md:text-4xl font-black mb-1 text-[#e65e92]">
            Маршрут №{selectedRoute}{" "}
            {routes.find((r) => r.number === selectedRoute)?.title}
          </h1>
          <p className="text-gray-500 text-sm md:text-base">
            {currentDate} · {dayFilter} · Діє з 26.02.2026
          </p>
        </div>

        <div className="h-px bg-[#dceefb]" />

        <Filters dayFilter={dayFilter} setDayFilter={setDayFilter} />

        <DirectionSwitch direction={direction} setDirection={setDirection} />

        <div className="flex-1 overflow-auto">
          <ScheduleTable
            routeNumber={selectedRoute}
            routes={routes}
            direction={direction}
            dayFilter={dayFilter}
          />
        </div>

      </div>
    </div>
  );
}
