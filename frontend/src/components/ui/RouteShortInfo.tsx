interface RouteShortInfoProps {
  routeNumber: string;
  routeName: string;
  intervalTime: string;
  href: string;
}

export default function RouteShortInfo({routeNumber, routeName, intervalTime, href}: RouteShortInfoProps){
  return(
    <li className="flex border-b border-gray-300 items-center">
      <p className="w-1/6 p-4"><strong>№ {routeNumber}</strong></p>
      <div className="w-2/6 p-4">{routeName}</div>
      <div className="w-2/6 p-4">{intervalTime}</div>
      <div className="w-1/6 p-4">
        <button className="bg-(--primary-blue) text-white px-3 py-1.5 rounded shadow hover:shadow-lg transition">Показати</button>
      </div>
    </li>
  )
}