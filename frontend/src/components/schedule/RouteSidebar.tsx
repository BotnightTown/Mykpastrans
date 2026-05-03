interface Route {
  id: number;
  number: string;
  name?: string;
}

interface Props {
  selectedRoute: string;
  onSelect: (routeNumber: string) => void;
  routes: Route[];
}

export default function RouteSidebar({
  selectedRoute,
  onSelect,
  routes,
}: Props) {
  const sortedRoutes = [...routes].sort((a, b) =>
    a.number.localeCompare(b.number, undefined, { numeric: true }),
  );

  return (
    <div>
      <div className="flex md:hidden w-full overflow-x-auto bg-gray-50 px-2 py-2 gap-1.5 shadow-md">
        {sortedRoutes.map((route) => (
          <button
            key={route.id}
            onClick={() => onSelect(route.number)}
            className={`shrink-0 min-w-[40px] h-9 px-2 rounded-lg font-bold text-sm transition-colors duration-200 ${
              selectedRoute === route.number
                ? "bg-(--primary-blue) text-white shadow-md"
                : "bg-white hover:bg-gray-200 border border-gray-200"
            }`}
          >
            {route.number}
          </button>
        ))}
      </div>

      <div className="hidden md:flex md:w-28 w-full bg-gray-50 p-3 flex-col gap-2 sticky top-0 h-screen shadow-md overflow-y-auto">
        <h2 className="text-lg font-bold text-gray-700 mb-2 text-center">№</h2>

        {routes.length === 0 && (
          <div className="text-gray-400 text-sm text-center">
            Немає маршрутів
          </div>
        )}

        {sortedRoutes.map((route) => (
          <button
            key={route.id}
            onClick={() => onSelect(route.number)}
            className={`w-full py-3 px-2 rounded-xl font-bold text-lg transition-colors duration-200 cursor-pointer ${
              selectedRoute === route.number
                ? "bg-(--primary-blue) text-white shadow-md"
                : "bg-white hover:bg-gray-200 border border-gray-100"
            }`}
          >
            {route.number}
          </button>
        ))}

        {selectedRoute && (
          <div className="mt-auto text-center text-xs text-gray-500 pt-2 border-t border-gray-200">
            Маршрут №{selectedRoute}
          </div>
        )}
      </div>
    </div>
  );
}