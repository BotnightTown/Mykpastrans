import Image from "next/image";

interface TransportCardProps {
  image: string;
  model: string;
  description: string;
}

export default function TransportCard({
  image,
  model,
  description,
}: TransportCardProps) {
  return (
    <div className="h-95 border border-gray-200 bg-white transition-all duration-300 hover:shadow-lg flex flex-col overflow-hidden">
      <div className="relative h-52 w-full bg-gray-300 shrink-0">
        <Image
          src={image}
          alt={model}
          fill
          className="object-cover"
          sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
        />
      </div>

      <div className="p-6 flex flex-col grow">
        <div className="flex justify-between items-start mb-2 shrink-0">
          <h3 className="text-(--primary-blue) font-black text-xl uppercase leading-tight">
            {model}
          </h3>
        </div>

        <p className="text-gray-600 text-sm line-clamp-4 overflow-hidden wrap-break-word">
          {description}
        </p>
      </div>
    </div>
  );
}
