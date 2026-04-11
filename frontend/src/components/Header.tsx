"use client";

import Link from "next/dist/client/link";
import Image from "next/image";
import HeaderLink from "./ui/HeaderLink";
import { RxHamburgerMenu } from "react-icons/rx";
import { useState } from "react";


function HeaderDesktop() {
  return (
    <header className="bg-white border-b-4 border-(--primary-blue) sticky top-0 z-50 py-3 md:py-4 px-4 md:px-[5%]">
      <div className="flex justify-between items-center max-w-6xl mx-auto">
        <Link
          href="/"
          className="flex items-center gap-2 text-(--primary-blue) font-black text-xl uppercase tracking-tighter no-underline"
        >
          <Image
            src="/Logo.png"
            alt="Миколаївпастранс"
            width={32}
            height={32}
          />
          Миколаївпастранс
        </Link>

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
                { href: "/about/rolling-stock", title: "Рухомий склад" },
              ]}
            />
            <HeaderLink href="/contacts" title="Контакти" />
          </ul>
        </nav>
      </div>
    </header>
  );
}

function HeaderMobile() {
  const [isHeaderOpen, setIsHeaderOpen] = useState<boolean>(false);

  return (
    <header className="sticky top-0 text-black">
      <div className="z-1000 w-full bg-white border-b-4 border-(--primary-blue) px-4 h-16.5 flex flex-row justify-between items-center md:hidden">
        <Link
          href="/"
          className="flex items-center gap-2 text-(--primary-blue) font-black text-xl uppercase tracking-tighter no-underline"
        >
          <Image
            src="/Logo.png"
            alt="Миколаївпастранс"
            width={32}
            height={32}
          />
          Миколаївпастранс
        </Link>

        <RxHamburgerMenu
          className="text-3xl cursor-pointer"
          onClick={() => setIsHeaderOpen((prev) => !prev)}
        />
      </div>

      <div
        className={`absolute top-full left-0 w-full bg-white shadow-xl overflow-hidden transition-all duration-400 ${
          isHeaderOpen ? "max-h-96 opacity-100" : "max-h-0 opacity-0"
        }`}
      >
        <nav className="flex flex-col pb-1">
          <Link
            href="/news"
            className="px-4 py-2 border-b-2 text-(--primary-blue) font-semibold"
          >
            Новини
          </Link>

          <div className="border-b-2 border-(--primary-blue) flex flex-col px-4 py-2 gap-2">
            <p className="font-bold text-(--primary-blue)">Пасажирам</p>
            <div className="flex flex-col gap-2">
              <Link
                href="/passengers/schedule"
                className="pl-4 text-sm hover:bg-gray-100"
              >
                Розклад
              </Link>
              <Link
                href="/passengers/payment"
                className="pl-4 text-sm hover:bg-gray-100"
              >
                Способи оплати
              </Link>
              <Link
                href="/passengers/stops"
                className="pl-4 text-sm hover:bg-gray-100"
              >
                Зупинки
              </Link>
            </div>
          </div>

          <div className="border-b-2 border-(--primary-blue) flex flex-col px-4 py-2 gap-2">
            <p className="font-bold text-(--primary-blue)">Про нас</p>
            <div className="flex flex-col gap-2">
              <Link
                href="/about/history"
                className="pl-4 text-sm hover:bg-gray-100"
              >
                Історія підприємства
              </Link>
              <Link
                href="/about/rolling-stock"
                className="pl-4 text-sm hover:bg-gray-100"
              >
                Рухомий склад
              </Link>
            </div>
          </div>

          <Link
            href="/contacts"
            className="px-4 py-2 border-b-2 text-(--primary-blue) font-semibold"
          >
            Контакти
          </Link>
        </nav>
      </div>
    </header>
  );
}

export default function Header() {
  return (
    <>
      <div className="hidden md:block">
        <HeaderDesktop />
      </div>
      <div className="block md:hidden sticky top-0 z-50">
        <HeaderMobile />
      </div>
    </>
  );
}
