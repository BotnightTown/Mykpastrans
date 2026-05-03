"use client";

import { useEffect, useState } from "react";
import RouteSidebar from "@/components/schedule/RouteSidebar";
import ScheduleTable from "@/components/schedule/ScheduleTable";
import Filters from "@/components/schedule/Filters";
import DirectionSwitch from "@/components/schedule/DirectionSwitch";
import { SchedulePageSkeleton } from "@/components/skeletons";
import { formatCurrentDate, formatShortDate, isWeekend } from "@/utils/date";
import { getRoutes } from "@/services/schedule.service";
import { Route } from "@/types/schedule.types";

export default function SchedulePage() {
  const [selectedRoute, setSelectedRoute] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [dayFilter, setDayFilter] = useState(
    isWeekend() ? "Вихідні та святкові дні" : "Робочі дні",
  );
  const [direction, setDirection] = useState<"Туди" | "Назад">("Туди");
  const [routes, setRoutes] = useState<Route[]>([]);

  const currentDate = formatCurrentDate();
  const availableRoutes = routes.filter((route) => route.isActive !== false);
  const activeRoute = availableRoutes.find(
    (route) => route.number === selectedRoute,
  );
  const scheduleStartDate = activeRoute?.lastChange ?? activeRoute?.updatedAt;
  const formattedScheduleStartDate = scheduleStartDate
    ? formatShortDate(scheduleStartDate)
    : "";

  useEffect(() => {
    async function fetchData() {
      const data = await getRoutes();
      setRoutes(data);

      const validRoutes = data.filter((route) => route.isActive !== false);
      const savedRoute = localStorage.getItem("selectedRoute");
      const nextRoute =
        validRoutes.find((route) => route.number === savedRoute)?.number ??
        validRoutes[0]?.number ??
        null;

      setSelectedRoute(nextRoute);

      if (nextRoute) {
        localStorage.setItem("selectedRoute", nextRoute);
      } else {
        localStorage.removeItem("selectedRoute");
      }

      setIsLoading(false);
    }

    fetchData();
  }, []);

  const handleRouteSelect = (route: string) => {
    setSelectedRoute(route);
    localStorage.setItem("selectedRoute", route);
  };

  if (isLoading) return <SchedulePageSkeleton />;

  if (!activeRoute) {
    return (
      <div className="flex min-h-screen items-center justify-center bg-white p-6">
        <p className="text-center text-sm md:text-base text-gray-500">
          Наразі немає доступних маршрутів.
        </p>
      </div>
    );
  }

  return (
    <div className="flex flex-col md:flex-row min-h-screen bg-white">
      <div className="md:w-28 w-full md:h-screen shrink-0">
        <RouteSidebar
          selectedRoute={activeRoute.number}
          onSelect={handleRouteSelect}
          routes={availableRoutes}
        />
      </div>

      <div className="flex-1 p-4 md:p-6 flex flex-col gap-3">
        <div className="text-left">
          <h1 className="text-3xl md:text-4xl font-black mb-1 text-[#e65e92]">
            Маршрут №{activeRoute.number} {activeRoute.title}
          </h1>
          <p className="text-gray-500 text-sm md:text-base">
            {currentDate} · {dayFilter}
            {formattedScheduleStartDate &&
              ` · Діє з ${formattedScheduleStartDate}`}
          </p>
        </div>

        <div className="h-px bg-[#dceefb]" />

        <Filters dayFilter={dayFilter} setDayFilter={setDayFilter} />

        <DirectionSwitch direction={direction} setDirection={setDirection} />

        <div className="flex-1 overflow-auto">
          <ScheduleTable
            routeNumber={activeRoute.number}
            routes={availableRoutes}
            direction={direction}
            dayFilter={dayFilter}
          />
        </div>
      </div>
    </div>
  );
}
