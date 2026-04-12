"use client";

import Link from "next/link";

interface RouteShortInfoProps {
  routeNumber: string;
  routeName: string;
  intervalTime: string;
  // href: string;
}

export default function RouteShortInfo({
  routeNumber,
  routeName,
  intervalTime,
  // href,
}: RouteShortInfoProps) {
  return (
    <li className="flex flex-col md:flex-row border-b border-gray-100 items-start md:items-center hover:bg-blue-50/30 transition-all p-5 md:p-0">
      <div className="w-full md:w-1/6 md:p-4 mb-2 md:mb-0 flex justify-between md:block">
        <span className="md:hidden text-[10px] font-bold text-gray-400 uppercase tracking-widest">
          Маршрут:
        </span>
        <strong className="text-xl md:text-base text-(--primary-blue)">
          № {routeNumber}
        </strong>
      </div>

      <div className="w-full md:w-2/6 md:p-4 mb-2 md:mb-0 flex justify-between md:block">
        <span className="md:hidden text-[10px] font-bold text-gray-400 uppercase tracking-widest">
          Напрямок:
        </span>
        <span className="font-semibold md:font-medium text-gray-800 text-right md:text-left">
          {routeName}
        </span>
      </div>

      <div className="w-full md:w-2/6 md:p-4 mb-4 md:mb-0 flex justify-between md:block text-gray-600">
        <span className="md:hidden text-[10px] font-bold text-gray-400 uppercase tracking-widest">
          Інтервал:
        </span>
        <span className="text-sm md:text-base italic md:not-italic">
          {intervalTime}
        </span>
      </div>

      <div className="w-full md:w-1/6 md:p-4 md:text-right">
        <Link
          href={"http://localhost:3000/passengers/schedule"}
          onClick={() => {
            localStorage.setItem("selectedRoute", routeNumber);
          }}
          className="w-full md:w-auto bg-(--primary-blue) text-white px-6 py-2.5 rounded shadow-sm hover:bg-blue-700 transition font-bold text-xs uppercase tracking-wider"
        >
          Детальніше
        </Link>
      </div>
    </li>
  );
}
