interface Props {
  direction: "Туди" | "Назад";
  setDirection: (dir: "Туди" | "Назад") => void;
}

export default function DirectionSwitch({ direction, setDirection }: Props) {
  return (
    <div className="flex gap-2 my-4">
      <button
        className={`px-4 py-2 rounded font-semibold cursor-pointer ${
          direction === "Туди"
            ? "bg-(--primary-blue) text-white"
            : "bg-gray-200"
        }`}
        onClick={() => setDirection("Туди")}
      >
        Туди
      </button>
      <button
        className={`px-4 py-2 rounded font-semibold cursor-pointer ${
          direction === "Назад"
            ? "bg-(--primary-blue) text-white"
            : "bg-gray-200"
        }`}
        onClick={() => setDirection("Назад")}
      >
        Назад
      </button>
    </div>
  );
}
