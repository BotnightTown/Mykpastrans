import Image from "next/image";
import Link from "next/link";

interface NewsCardProps {
  image?: string | null;
  date: string;
  title: string;
  description?: string | null;
  slug: string;
}

export default function NewsCard({
  image,
  date,
  title,
  description,
  slug,
}: NewsCardProps) {
  const strapiUrl =
    process.env.NEXT_PUBLIC_STRAPI_URL ?? "http://localhost:1337";
  const imageSrc = image
    ? image.startsWith("http")
      ? image
      : `${strapiUrl}${image}`
    : null;

  return (
    <Link href={`/news/${slug}`} className="no-underline">
      <article className="border border-gray-200 bg-white transition-all duration-300 hover:shadow-lg h-full flex flex-col">
        {imageSrc ? (
          <Image
            src={imageSrc}
            width={400}
            height={200}
            alt={title}
            className="w-full h-52 object-cover"
          />
        ) : (
          <div className="w-full h-52 bg-gray-100 flex items-center justify-center">
            <span className="text-gray-400 text-sm">Без фото</span>
          </div>
        )}
        <div className="p-6 flex flex-col flex-1">
          <p className="text-gray-600 text-sm mb-2">{date}</p>
          <h3 className="text-(--primary-blue) font-semibold mb-4 text-lg md:text-xl">
            {title}
          </h3>
          {description && (
            <p className="text-gray-700 text-sm md:text-base line-clamp-2 mt-auto">
              {description}
            </p>
          )}
        </div>
      </article>
    </Link>
  );
}
