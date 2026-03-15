"use client";

import Link from "next/dist/client/link";
import Image from "next/image";
import HeaderLink from "./ui/HeaderLink";
import { useMediaQuery } from "@uidotdev/usehooks";

function HeaderDesktop() {
  return (
    <header className="bg-white border-b-4 border-(--primary-blue) sticky top-0 z-1000 py-4 px-[5%]">
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
  return <header>123</header>;
}

export default function Header() {
  const isSmallDevice = useMediaQuery("only screen and (max-width : 768px)");

  return isSmallDevice ? <HeaderMobile /> : <HeaderDesktop />;
}
