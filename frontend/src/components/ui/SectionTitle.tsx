interface SectionTitleProps {
  title: string;
}

export default function SectionTitle({ title }: SectionTitleProps) {
  return(
    <h2 className="text-2xl md:text-4xl font-black text-(--primary-blue) border-l-4 md:border-l-6 border-(--accent-pink) pl-3 md:pl-4 mb-6 md:mb-8 uppercase">{title}</h2>
  )
}
