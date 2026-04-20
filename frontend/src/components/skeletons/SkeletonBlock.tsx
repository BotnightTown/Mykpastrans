interface SkeletonBlockProps {
  className: string;
}

export default function SkeletonBlock({ className }: SkeletonBlockProps) {
  return <div className={`animate-pulse rounded-2xl bg-[#e8f4fe] ${className}`} />;
}
