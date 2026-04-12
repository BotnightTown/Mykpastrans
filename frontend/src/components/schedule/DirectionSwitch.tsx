interface Props {
  direction: "Туди" | "Назад";
  setDirection: (dir: "Туди" | "Назад") => void;
}

export default function DirectionSwitch({ direction, setDirection }: Props) {
  return (
    <div className="flex gap-2 my-2 p-1 bg-[#f0f7ff] rounded-xl border border-[#b5d4f4] w-fit">
      <button
        className={`px-6 py-2 rounded-lg font-bold text-base transition-all duration-200 cursor-pointer ${
          direction === "Туди"
            ? "bg-[#1a8fff] text-white shadow-sm"
            : "text-[#185FA5] hover:bg-[#dceefb]"
        }`}
        onClick={() => setDirection("Туди")}
      >
        ← Туди
      </button>
      <button
        className={`px-6 py-2 rounded-lg font-bold text-base transition-all duration-200 cursor-pointer ${
          direction === "Назад"
            ? "bg-[#e65e92] text-white shadow-sm"
            : "text-[#185FA5] hover:bg-[#dceefb]"
        }`}
        onClick={() => setDirection("Назад")}
      >
        Назад →
      </button>
    </div>
  );
}