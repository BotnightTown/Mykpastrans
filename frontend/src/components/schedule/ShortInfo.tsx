"use client";

import { useEffect, useState } from "react";
import { Route } from "@/types/schedule.types";
import RouteShortInfo from "../ui/RouteShortInfo";
import { getRoutes } from "@/services/schedule.service";

export default function ShortInfo() {
  const [routes, setRoutes] = useState<Route[]>([]);

  useEffect(() => {
    async function fetchData() {
      const data = await getRoutes();
      setRoutes(data);
    }
    fetchData();
  }, []);
  const sortedRoutes = routes
    .filter((route) => route.isActive !== false)
    .sort((a, b) =>
      a.number.localeCompare(b.number, undefined, { numeric: true }),
    );
  return (
    <div className="overflow-hidden rounded-xl border border-gray-200 shadow-sm">
      <ul className="w-full text-lg list-none p-0 m-0">
        <li className="hidden md:flex bg-gray-50 font-bold uppercase text-xs tracking-wider text-gray-500">
          <div className="w-1/6 p-4 border-b-2 border-(--primary-blue)">
            Маршрут
          </div>
          <div className="w-2/6 p-4 border-b-2 border-(--primary-blue)">
            Напрямок
          </div>
          <div className="w-2/6 p-4 border-b-2 border-(--primary-blue)">
            Інтервал руху
          </div>
          <div className="w-1/6 p-4 border-b-2 border-(--primary-blue) text-right">
            Розклад
          </div>
        </li>
        {sortedRoutes.map((route, index) => (
          <RouteShortInfo
            key={index}
            routeNumber={route.number}
            routeName={route.title}
            intervalTime={route.intervalTime}
          />
        ))}
      </ul>
    </div>
  );
}
