interface SectionTitleProps {
  title: string;
}

export default function SectionTitle({ title }: SectionTitleProps) {
  return(
    <h2 className="text-4xl font-black text-(--primary-blue) border-l-6 border-(--accent-pink) pl-4 mb-8 uppercase">
      {title}
    </h2>
  )
}