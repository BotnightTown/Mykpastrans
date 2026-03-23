'use client';

import Link from "next/link";
import Image from "next/image";
import HeaderLink from "./ui/HeaderLink";
import { useState } from "react";

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <header className="bg-white border-b-4 border-(--primary-blue) sticky top-0 z-50 py-3 md:py-4 px-4 md:px-[5%]">
      <div className="flex justify-between items-center max-w-6xl mx-auto">
        
        {/* Логотип */}
        <Link
          href="/"
          className="flex items-center gap-2 text-(--primary-blue) font-black text-xl uppercase tracking-tighter no-underline shrink-0"
        >
          <Image src="/Logo.png" alt="Миколаївпастранс" width={32} height={32} />
          <span className="leading-none">Миколаївпастранс</span>
        </Link>

        {/* Десктопна навігація */}
        <nav className="hidden md:block">
          <ul className="flex gap-8 list-none m-0 p-0">
            <HeaderLink href="#" title="Новини" />
            <HeaderLink href="/schedule" title="Розклад" />
            <HeaderLink
              title="Пасажирам"
              items={[
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
        </nav>

        {/* Бургер для мобільних */}
        <button
          className="md:hidden p-2 text-(--primary-blue)"
          onClick={() => setIsOpen(!isOpen)}
        >
          <div className="w-6 h-0.5 bg-current mb-1.5"></div>
          <div className="w-6 h-0.5 bg-current mb-1.5"></div>
          <div className="w-6 h-0.5 bg-current"></div>
        </button>
      </div>

      {/* Мобільне меню */}
      {isOpen && (
        <nav className="md:hidden mt-2">
          <ul className="flex flex-col gap-2 list-none m-0 p-0">
            <HeaderLink href="#" title="Новини" />
            <HeaderLink href="/schedule" title="Розклад" />
            <HeaderLink
              title="Пасажирам"
              items={[
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
        </nav>
      )}
    </header>
  );
}