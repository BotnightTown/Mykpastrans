"use client";

import { useEffect, useState, useCallback } from "react";
import { getRouteStops, getRoutes } from "@/services/stops.service";
import { StrapiRouteStop } from "@/types/stops.types";
import { FaChevronDown } from "react-icons/fa6";
import SectionTitle from "@/components/ui/SectionTitle";

interface Route {
  id: number;
  number: string;
  title: string;
}

export default function StopsPage() {
  const [routeStops, setRouteStops] = useState<StrapiRouteStop[]>([]);
  const [routes, setRoutes] = useState<Route[]>([]);
  const [selectedRoute, setSelectedRoute] = useState<string>("");
  const [selectedDirection, setSelectedDirection] = useState<
    "" | "forward" | "backward"
  >("");
  const [loading, setLoading] = useState(true);
  const [openGroups, setOpenGroups] = useState<Set<string>>(new Set());

  useEffect(() => {
    getRoutes()
      .then((res) => setRoutes(res.data ?? []))
      .catch(() => setRoutes([]));
  }, []);

  const loadStops = useCallback(async () => {
    setLoading(true);
    try {
      const data = await getRouteStops({
        routeNumber: selectedRoute || undefined,
        direction: (selectedDirection as "forward" | "backward") || undefined,
      });
      setRouteStops(data);

      if (selectedRoute) {
        const keys = new Set(
          data.map((rs) => `${rs.route.number}__${rs.direction}`),
        );
        setOpenGroups(keys);
      } else {
        setOpenGroups(new Set());
      }
    } catch {
      setRouteStops([]);
      setOpenGroups(new Set());
    } finally {
      setLoading(false);
    }
  }, [selectedRoute, selectedDirection]);

  useEffect(() => {
    loadStops();
  }, [loadStops]);

  const toggleGroup = (key: string) => {
    setOpenGroups((prev) => {
      const next = new Set(prev);
      next.has(key) ? next.delete(key) : next.add(key);
      return next;
    });
  };

  const grouped = routeStops.reduce(
    (acc, rs) => {
      const key = `${rs.route.number}__${rs.direction}`;
      if (!acc[key]) {
        acc[key] = { route: rs.route, direction: rs.direction, stops: [] };
      }
      acc[key].stops.push(rs);
      return acc;
    },
    {} as Record<
      string,
      {
        route: StrapiRouteStop["route"];
        direction: "forward" | "backward";
        stops: StrapiRouteStop[];
      }
    >,
  );

  const groupedList = Object.values(grouped).sort((a, b) => {
    const numA = parseInt(a.route.number);
    const numB = parseInt(b.route.number);
    if (numA !== numB) return numA - numB;
    return a.direction === "forward" ? -1 : 1;
  });

  const directionLabel = (d: "forward" | "backward") =>
    d === "forward" ? "Туди" : "Назад";

  return (
    <div className="w-full min-h-screen bg-(--light-bg)">

      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Зупинки" />
        </div>
      </section>

      <div className="max-w-6xl mx-auto px-8 py-10 flex flex-col gap-6">

        <div className="flex flex-col sm:flex-row gap-3">
          <div className="flex flex-wrap gap-2">
            <button
              onClick={() => setSelectedRoute("")}
              className="rounded-lg text-sm font-semibold transition-all hover:opacity-90"
              style={{
                paddingTop: "7px",
                paddingBottom: "7px",
                paddingLeft: "14px",
                paddingRight: "14px",
                ...(selectedRoute === ""
                  ? { background: "#0E95F7", color: "#ffffff", border: "2px solid #0E95F7" }
                  : { background: "#f8fbff", color: "#0E95F7", border: "2px solid #dceefb" }),
              }}
            >
              Всі маршрути
            </button>
            {routes.map((route) => (
              <button
                key={route.id}
                onClick={() =>
                  setSelectedRoute(
                    selectedRoute === route.number ? "" : route.number,
                  )
                }
                className="rounded-lg text-sm font-semibold transition-all hover:opacity-90"
                style={{
                  paddingTop: "7px",
                  paddingBottom: "7px",
                  paddingLeft: "14px",
                  paddingRight: "14px",
                  ...(selectedRoute === route.number
                    ? { background: "#0E95F7", color: "#ffffff", border: "2px solid #0E95F7" }
                    : { background: "#f8fbff", color: "#0E95F7", border: "2px solid #dceefb" }),
                }}
              >
                №{route.number}
              </button>
            ))}
          </div>

          <div className="flex gap-2 sm:ml-auto">
            <button
              onClick={() => setSelectedDirection("")}
              className="rounded-lg text-sm font-semibold transition-all hover:opacity-90"
              style={{
                paddingTop: "7px",
                paddingBottom: "7px",
                paddingLeft: "14px",
                paddingRight: "14px",
                ...(selectedDirection === ""
                  ? { background: "#0E95F7", color: "#ffffff", border: "2px solid #0E95F7" }
                  : { background: "#f8fbff", color: "#0E95F7", border: "2px solid #dceefb" }),
              }}
            >
              Обидва
            </button>
            <button
              onClick={() =>
                setSelectedDirection(
                  selectedDirection === "forward" ? "" : "forward",
                )
              }
              className="rounded-lg text-sm font-semibold transition-all hover:opacity-90"
              style={{
                paddingTop: "7px",
                paddingBottom: "7px",
                paddingLeft: "14px",
                paddingRight: "14px",
                ...(selectedDirection === "forward"
                  ? { background: "#0E95F7", color: "#ffffff", border: "2px solid #0E95F7" }
                  : { background: "#f8fbff", color: "#0E95F7", border: "2px solid #dceefb" }),
              }}
            >
              Туди
            </button>
            <button
              onClick={() =>
                setSelectedDirection(
                  selectedDirection === "backward" ? "" : "backward",
                )
              }
              className="rounded-lg text-sm font-semibold transition-all hover:opacity-90"
              style={{
                paddingTop: "7px",
                paddingBottom: "7px",
                paddingLeft: "14px",
                paddingRight: "14px",
                ...(selectedDirection === "backward"
                  ? { background: "#FF7AAD", color: "#ffffff", border: "2px solid #FF7AAD" }
                  : { background: "#fff8fb", color: "#FF7AAD", border: "2px solid #fde8f2" }),
              }}
            >
              Назад
            </button>
          </div>
        </div>

        {loading ? (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {Array.from({ length: 4 }).map((_, i) => (
              <div
                key={i}
                className="bg-white rounded-2xl animate-pulse overflow-hidden"
                style={{ border: "2px solid #e8f4fe" }}
              >
                <div className="p-4 flex flex-col gap-3">
                  <div className="h-5 rounded-full w-1/3" style={{ background: "#e8f4fe" }} />
                  {Array.from({ length: 5 }).map((_, j) => (
                    <div key={j} className="h-3.5 rounded-full w-full" style={{ background: "#f0f8ff" }} />
                  ))}
                </div>
              </div>
            ))}
          </div>
        ) : groupedList.length === 0 ? (
          <div className="text-center py-24">
            <p className="text-gray-400 text-xl">Зупинок не знайдено</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {groupedList.map((group) => {
              const key = `${group.route.number}__${group.direction}`;
              const isOpen = openGroups.has(key);
              const isForward = group.direction === "forward";

              return (
                <div
                  key={key}
                  className="bg-white overflow-hidden rounded-2xl transition-all"
                  style={{ border: "2px solid #e8f4fe" }}
                >
                  <button
                    onClick={() => toggleGroup(key)}
                    className="w-full flex items-center gap-3 px-4 py-3 hover:bg-[#f8fbff] transition-colors text-left cursor-pointer"
                    style={{ borderBottom: isOpen ? "2px solid #e8f4fe" : "none" }}
                  >
                    <span
                      className="text-2xl font-black shrink-0"
                      style={{ color: "#0E95F7" }}
                    >
                      №{group.route.number}
                    </span>
                    <div className="flex flex-col flex-1 min-w-0">
                      <span className="text-base font-semibold text-gray-800 truncate">
                        {group.route.title}
                      </span>
                      <span className="text-xs text-gray-400">
                        {group.stops.length} зупинок
                      </span>
                    </div>
                    <span
                      className="text-xs font-bold uppercase tracking-wider px-3 py-1 rounded-lg shrink-0"
                      style={
                        isForward
                          ? { background: "#0E95F7", color: "#fff" }
                          : { background: "#FF7AAD", color: "#fff" }
                      }
                    >
                      {directionLabel(group.direction)}
                    </span>
                    <FaChevronDown
                      className={`shrink-0 transition-transform duration-300 ${isOpen ? "rotate-180" : ""}`}
                      style={{ color: isForward ? "#0E95F7" : "#FF7AAD" }}
                    />
                  </button>

                  <div
                    className="transition-all duration-300 ease-in-out overflow-hidden"
                    style={{
                      maxHeight: isOpen ? `${group.stops.length * 44}px` : "0px",
                      opacity: isOpen ? 1 : 0,
                    }}
                  >
                    <ol className="divide-y" style={{ borderColor: "#f0f8ff" }}>
                      {group.stops.map((rs, idx) => (
                        <li
                          key={rs.id}
                          className="flex items-center gap-3 px-4 py-2.5 hover:bg-[#f8fbff] transition-colors"
                        >
                          <span
                            className="text-xs font-bold w-6 text-right shrink-0"
                            style={{ color: isForward ? "#0E95F7" : "#FF7AAD" }}
                          >
                            {idx + 1}
                          </span>
                          <span className="text-sm text-gray-800 flex-1">
                            {rs.stop.name}
                            {rs.stop.note && (
                              <span className="text-gray-400 text-xs ml-1">
                                ({rs.stop.note})
                              </span>
                            )}
                          </span>
                          {rs.onDemand && (
                            <span className="text-xs bg-yellow-100 text-yellow-700 font-semibold px-2 py-0.5 rounded-md shrink-0">
                              на вимогу
                            </span>
                          )}
                        </li>
                      ))}
                    </ol>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}