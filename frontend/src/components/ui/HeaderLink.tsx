import Link from "next/link";

interface HeaderLinkProps {
  href: string;
  title: string;
}

export default function HeaderLink({ href, title }: HeaderLinkProps){
  return(
    <li>
      <Link 
        href={href} 
        className="no-underline text-gray-900 font-semibold uppercase text-base hover:text-(--primary-blue) transition-all"
      >
        {title}
      </Link>
    </li>
  )
}