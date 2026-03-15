'use client'; 
import { useState } from 'react';
import Link from "next/link";
import Image from "next/image";

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);

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

      <div className={`md:hidden ${isOpen ? 'block' : 'hidden'} absolute top-full left-0 w-full bg-white border-b border-gray-200 shadow-xl`}>
        <ul className="flex flex-col list-none p-4 m-0 gap-4">
          <li><a href="#" className="block no-underline text-gray-900 font-bold uppercase text-center p-2 border-b border-gray-50">Маршрути</a></li>
          <li><a href="#" className="block no-underline text-gray-900 font-bold uppercase text-center p-2 border-b border-gray-50">Розклад</a></li>
          <li><a href="#" className="block no-underline text-gray-900 font-bold uppercase text-center p-2 border-b border-gray-50">Новини</a></li>
          <li><a href="#" className="block no-underline text-gray-900 font-bold uppercase text-center p-2 border-b border-gray-50">Контакти</a></li>
        </ul>
      </div>
    </header>
  );
}