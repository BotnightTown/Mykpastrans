import Link from "next/dist/client/link"
import Image from "next/image"
import HeaderLink from "./ui/HeaderLink"

  return (
    <header className="bg-white border-b-4 border-(--primary-blue) sticky top-0 z-50 py-3 md:py-4 px-4 md:px-[5%]">
      <div className="flex justify-between items-center max-w-6xl mx-auto">
        
        <Link href="/" className="flex items-center gap-2 text-(--primary-blue) font-black text-xl uppercase tracking-tighter no-underline shrink-0">
          <Image src="/Logo.png" alt="Миколаївпастранс" width={32} height={32} />
          <span className="leading-none">Миколаївпастранс</span>
        </Link>

        <nav className="hidden md:block">
          <ul className="flex gap-8 list-none m-0 p-0">
            <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-sm hover:text-(--primary-blue) transition-all">Маршрути</a></li>
            <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-sm hover:text-(--primary-blue) transition-all">Розклад</a></li>
            <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-sm hover:text-(--primary-blue) transition-all">Новини</a></li>
            <li><a href="#" className="no-underline text-gray-900 font-semibold uppercase text-sm hover:text-(--primary-blue) transition-all">Контакти</a></li>
          </ul>
        </nav>

        <button 
          className="md:hidden p-2 text-(--primary-blue)"
          onClick={() => setIsOpen(!isOpen)}
        >
          <div className="w-6 h-0.5 bg-current mb-1.5 transition-all"></div>
          <div className="w-6 h-0.5 bg-current mb-1.5 transition-all"></div>
          <div className="w-6 h-0.5 bg-current transition-all"></div>
        </button>
      </div>

      <nav className="hidden md:block">
        <ul className="flex gap-8 list-none">
          <HeaderLink href="#" title="Новини" />
          <HeaderLink
            title="Пасажирам"
            items={[
              { href: "/passengers/schedule", title: "Розклад" },
              { href: "/passengers/payment", title: "Способи оплати" },
              { href: "/passengers/stops", title: "Зупинки" },
            ]}
          />
          <HeaderLink
            title="Про нас" 
            items={[
              { href: "/about/history", title: "Історія підприємства" },
              { href: "/about/rolling-stock", title: "Рухомий склад" }
            ]}
          />
          <HeaderLink href="/contacts" title="Контакти" />
        </ul>
      </div>
    </header>
  );
}