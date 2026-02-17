import { NewsCardType } from "@/types/NewsCardType"
import Image from "next/image"
import Link from "next/link"


export default function NewsCard({image, date, title, description}: NewsCardType){
  return(
    <Link href="#" className="no-underline">
      <article className="border border-gray-200 bg-white transition-all duration-300 hover:shadow-lg">
        <Image 
          src={image}
          width={400} 
          height={200}
          alt="Новина" 
          className="w-full h-52 object-cover bg-gray-300" 
        />
        <div className="p-6">
          <p className="text-gray-600 text-sm mb-2">{date}</p>
          <h3 className="text-(--primary-blue) font-semibold mb-4">{title}</h3>
          <p className="text-gray-700 truncate">{description}</p>
        </div>
      </article>
    </Link>
  )
}
