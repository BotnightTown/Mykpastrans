'use client';

import Link from "next/link";
import { useState } from "react";
import { FaChevronDown } from "react-icons/fa6";

interface DropdownItem {
  href: string;
  title: string;
}

interface HeaderLinkProps {
  href?: string;
  title: string;
  items?: DropdownItem[];
}

export default function HeaderLink({ href = "#", title, items }: HeaderLinkProps) {
  const [isOpen, setIsOpen] = useState(false);
  const hasDropdown = items && items.length > 0;

  return (
    <li className="relative group">
      <Link
        href={href}
        className="no-underline text-gray-900 font-semibold uppercase text-sm hover:text-(--primary-blue) transition-all flex items-center gap-1"
        onMouseEnter={() => hasDropdown && setIsOpen(true)}
        onMouseLeave={() => hasDropdown && setIsOpen(false)}
      >
        {title}
        {hasDropdown && (
          <FaChevronDown
            className={`w-4 h-4 -translate-y-1/10 transition-transform duration-300 ${
              isOpen ? '-rotate-180' : ''
            }`}
          />
        )}
      </Link>

      {hasDropdown && (
        <div
          className={`absolute left-0 mt-0 w-max bg-white border border-gray-200 rounded-xs shadow-lg transition-opacity duration-300 z-10 ${
            isOpen ? 'opacity-100 visible' : 'opacity-0 invisible'
          }`}
          onMouseEnter={() => setIsOpen(true)}
          onMouseLeave={() => setIsOpen(false)}
        >
          <ul className="py-2 list-none m-0 p-0">
            {items.map((item) => (
              <li key={item.href}>
                <Link
                  href={item.href}
                  className="block px-4 py-1 text-gray-900 hover:bg-gray-100 hover:text-(--primary-blue) transition-all no-underline text-sm font-semibold"
                >
                  {item.title}
                </Link>
              </li>
            ))}
          </ul>
        </div>
      )}
    </li>
  );
}