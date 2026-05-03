interface Props {
  routeNumber: string;
  isSelected: boolean;
  onClick: () => void;
}

export default function RouteItem({ routeNumber, isSelected, onClick }: Props) {
  return (
    <button
      onClick={onClick}
      className={`p-3 rounded-lg font-bold transition-all ${
        isSelected ? 'bg-blue-500 text-white' : 'bg-white hover:bg-gray-200'
      }`}
    >
      {routeNumber}
    </button>
  );
}