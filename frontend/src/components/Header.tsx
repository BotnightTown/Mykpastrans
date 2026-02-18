import Link from "next/dist/client/link"
import Image from "next/image"
import HeaderLink from "./ui/HeaderLink"

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
          <HeaderLink href="#" title="Маршрути" />
          <HeaderLink href="#" title="Розклад" />
          <HeaderLink href="#" title="Новини" />
          <HeaderLink href="/contacts" title="Контакти" />
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