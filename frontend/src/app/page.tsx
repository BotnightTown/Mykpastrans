import Carousel from "@/components/Carousel";
import NewsCard from "@/components/NewsCard";
import SectionTitle from "@/components/ui/SectionTitle";
import Image from "next/image";

export default function Home() {
  return (
    <div className="">
      <Carousel>
        <div className="relative bg-cover bg-center h-screen flex flex-col items-center justify-center gap-8 px-8">
          <h1 className="text-5xl font-black text-white text-center drop-shadow-lg">КП «Миколаївпастранс»</h1>
          
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 w-full max-w-5xl text-black">
            <a href="#" className="bg-white p-10 rounded border-b-4 border-(--primary-blue) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">Розклад руху</h3>
              <p>Актуальні графіки та детальні маршрути всіх міських маршрутів.</p>
            </a>
            <a href="#" className="bg-white p-10 rounded border-b-4 border-(--accent-pink) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">Новини</h3>
              <p>Останні новини та оновлення від КП «Миколаївпастранс».</p>
            </a>
            <a href="#" className="bg-white p-10 rounded border-b-4 border-(--primary-blue) shadow-lg hover:shadow-xl hover:-translate-y-1 transition-all">
              <h3 className="text-xl font-black text-(--primary-blue) uppercase mb-4">Моніторинг</h3>
              <p>Відстежуйте рух автобусів у реальному часі на мапі міста.</p>
            </a>
          </div>
        </div>
      </Carousel>
      <section className="max-w-6xl mx-auto px-8 py-16">
        <SectionTitle title="Новини та оголошення" />
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <NewsCard 
            image="/carousel/00199874.jpg"
            date="13 Лютого, 2026"
            title="Оновлення графіку руху на маршруті №91"
            description="Для зручності пасажирів у вечірній час додано два додаткові рейси..."
          />
          <NewsCard 
            image="/carousel/00199874.jpg"
            date="11 Лютого, 2026"
            title="Безконтактна оплата стає ще зручнішою"
            description="Миколаївпастранс впроваджує нову систему моніторингу оплат CityCard."
          />
          <NewsCard 
            image="/carousel/00199874.jpg"
            date="09 Лютого, 2026"
            title="Запрошуємо на роботу водіїв категорії 'D'"
            description="Офіційне працевлаштування, повний соціальний пакет та стабільна зарплата."
          />
        </div>
      </section>
    </div>
  );
}
