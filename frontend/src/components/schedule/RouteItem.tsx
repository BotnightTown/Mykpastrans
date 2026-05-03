interface Props {
  routeNumber: string;
  isSelected: boolean;
  onClick: () => void;
}

export default function RouteItem({ routeNumber, isSelected, onClick }: Props) {
  return (
    <button
      onClick={onClick}
      className={`w-full py-3 px-2 rounded-xl font-bold text-lg transition-all ${
        isSelected
          ? "bg-blue-500 text-white shadow-md"
          : "bg-white hover:bg-gray-200 border border-gray-100"
      }`}
    >
      {routeNumber}
    </button>
  );
}