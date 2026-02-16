import Link from "next/dist/client/link"
import Image from "next/image"

function HeaderDesktop() {
  return (
    <header className="bg-white border-b-4 border-(--primary-blue) sticky top-0 z-1000 py-4 px-[5%]">
      <div className="flex justify-between items-center max-w-6xl mx-auto">

      <Link href="/" className="flex items-center gap-2 text-(--primary-blue) font-black text-xl uppercase tracking-tighter no-underline">
        <Image src="/Logo.png" alt="Миколаївпастранс" width={32} height={32} />
        Миколаївпастранс
      </Link>

      <nav className="hidden md:block">
        <ul className="flex gap-8 list-none">
        <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-base hover:text-(--primary-blue) transition-all">Маршрути</a></li>
        <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-base hover:text-(--primary-blue) transition-all">Розклад</a></li>
        <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-base hover:text-(--primary-blue) transition-all">Новини</a></li>
        <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-base hover:text-(--primary-blue) transition-all">Контакти</a></li>
        </ul>
      </nav>
      </div>
    </header>
  )
}

export default function Header() {
  return (
    <HeaderDesktop />
  )
}