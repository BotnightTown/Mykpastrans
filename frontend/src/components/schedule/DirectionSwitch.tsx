interface Props {
  direction: "Туди" | "Назад";
  setDirection: (dir: "Туди" | "Назад") => void;
}

export default function DirectionSwitch({ direction, setDirection }: Props) {
  return (
    <div className="flex justify-center md:justify-start my-1 md:my-2">
      <div className="flex gap-1.5 md:gap-2 p-1 bg-[#f0f7ff] rounded-xl border border-[#b5d4f4]">
        <button
          className={`px-4 md:px-6 py-1.5 md:py-2 rounded-lg font-bold text-sm md:text-base transition-all duration-200 cursor-pointer ${
            direction === "Туди"
              ? "bg-[#0E95F7] text-white shadow-sm"
              : "text-[#185FA5] hover:bg-[#dceefb]"
          }`}
          onClick={() => setDirection("Туди")}
        >
          ← Туди
        </button>
        <button
          className={`px-4 md:px-6 py-1.5 md:py-2 rounded-lg font-bold text-sm md:text-base transition-all duration-200 cursor-pointer ${
            direction === "Назад"
              ? "bg-[#e65e92] text-white shadow-sm"
              : "text-[#185FA5] hover:bg-[#dceefb]"
          }`}
          onClick={() => setDirection("Назад")}
        >
          Назад →
        </button>
      </div>
    </div>
  );
}