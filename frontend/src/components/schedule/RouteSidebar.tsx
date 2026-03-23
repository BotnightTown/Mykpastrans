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

export default function RouteSidebar({ selectedRoute, onSelect, routes }: Props) {
  return (
    <div>
      <div className="flex md:hidden w-full overflow-x-auto bg-gray-50 p-2 gap-2 shadow-md">
        {routes.map(route => (
          <button
            key={route.id}
            onClick={() => onSelect(route.number)}
            className={`flex-shrink-0 px-4 py-2 rounded-lg font-semibold transition-colors duration-200 ${
              selectedRoute === route.number ? 'bg-blue-500 text-white' : 'bg-white hover:bg-gray-200'
            }`}
          >
            {route.number}
          </button>
        ))}
      </div>

      <div className="hidden md:flex md:w-28 w-full bg-gray-50 p-4 flex-col gap-3 sticky top-0 h-screen shadow-md">
        <h2 className="text-lg font-bold text-gray-700 mb-2 text-center">№</h2>

        {routes.length === 0 && (
          <div className="text-gray-400 text-sm text-center">Немає маршрутів</div>
        )}

        {routes.map(route => (
          <button
            key={route.id}
            onClick={() => onSelect(route.number)}
            className={`p-3 rounded-lg font-semibold text-lg transition-colors duration-200 ${
              selectedRoute === route.number ? 'bg-blue-500 text-white' : 'bg-white hover:bg-gray-200'
            }`}
          >
            {route.number}
          </button>
        ))}

        {selectedRoute && (
          <div className="mt-auto text-center text-sm text-gray-500">
            Обрано маршрут №{selectedRoute}
          </div>
        )}
      </div>
    </div>
  );
}