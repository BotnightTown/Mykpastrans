"use client";

import { useState, useEffect } from "react";

interface CarouselProps {
  children?: React.ReactNode;
}

export default function Carousel({ children }: CarouselProps) {
  const [current, setCurrent] = useState(0);
  const slides = [
    "/carousel/00199874.jpg",
    "/carousel/00262176.jpg",
    "/carousel/00267178.jpg",
  ];

  useEffect(() => {
    const timer = setInterval(() => {
      setCurrent((prev) => (prev + 1) % slides.length);
    }, 5000);
    return () => clearInterval(timer);
  }, [slides.length]);

  return (
    <div className="relative w-full h-200 md:h-125 overflow-hidden">
      <div className="relative w-full h-full">
        {slides.map((slide, idx) => (
          <div
            key={idx}
            className={`absolute w-full h-full bg-cover opacity-0 transition-opacity duration-800 ${
              idx === current ? "opacity-100" : ""
            }`}
            style={{
              backgroundImage: `url(${slide})`,
              backgroundPosition: "50% 65%",
            }}
          />
        ))}
      </div>
      <div className="absolute top-0 left-0 w-full h-full flex flex-col justify-center items-center bg-black/50 z-20">
        {children}
      </div>
    </div>
  );
}
