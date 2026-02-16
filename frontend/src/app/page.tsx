import Carousel from "@/components/Carousel";
import Image from "next/image";

export default function Home() {
  return (
    <div className="">
      <Carousel>
        <div className="relative bg-cover bg-center h-screen flex flex-col items-center justify-center gap-8 px-8">
          <h1 className="text-5xl font-black text-white text-center drop-shadow-lg">КП «Миколаївпастранс»</h1>
          
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 w-full max-w-5xl text-black">
            <a href="#" className="bg-white p-10 rounded border-b-4 border-blue-500 shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-blue-500 uppercase mb-4">Розклад руху</h3>
              <p>Актуальні графіки та детальні маршрути всіх міських маршрутів.</p>
            </a>
            <a href="#" className="bg-white p-10 rounded border-b-4 border-pink-500 shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-blue-500 uppercase mb-4">Новини</h3>
              <p>Останні новини та оновлення від КП «Миколаївпастранс».</p>
            </a>
            <a href="#" className="bg-white p-10 rounded border-b-4 border-blue-500 shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-blue-500 uppercase mb-4">Моніторинг</h3>
              <p>Відстежуйте рух автобусів у реальному часі на мапі міста.</p>
            </a>
          </div>
        </div>
      </Carousel>
    </div>
  );
}
