import SectionTitle from "@/components/ui/SectionTitle";
import { Metadata } from "next";
import { ContactsForm } from "./ContactsForm";
import MapWrapper from "./MapWrapper";

export const metadata: Metadata = {
  title: "Контакти - «Миколаївпастранс»",
  description:
    "Знайдіть контактну інформацію комунального підприємства Миколаївської міської ради «Миколаївпастранс», включаючи телефон, адресу та електронну пошту для зв'язку.",
};

export default function ContactsPage() {
  return (
    <main className="bg-white text-[#333]">

      {/* Заголовок — без змін */}
      <section className="bg-[#f4f4f4] px-[5%] py-8 md:py-12 border-b border-[#dddddd]">
        <div className="max-w-350 mx-auto">
          <SectionTitle title="Контакти" />
        </div>
      </section>

      <section className="px-[5%] py-10 md:py-16">
        <div className="max-w-350 mx-auto grid grid-cols-1 lg:grid-cols-2 gap-8 md:gap-10 lg:gap-16">

          {/* Ліва колонка — контактна інфо */}
          <div>
            {/* Підзаголовок — без змін */}
            <h2 className="text-xl sm:text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-5 md:mb-8">
              Зв'яжіться з нами
            </h2>

            {/* Гаряча лінія */}
            <div
              className="mb-4 md:mb-5 p-4 md:p-5 rounded-2xl"
              style={{ border: "2px solid #e8f4fe", background: "#f8fbff" }}
            >
              <h3 className="text-xs text-gray-400 uppercase font-semibold tracking-wider mb-2">
                Гаряча лінія (скарги та пропозиції)
              </h3>
              <a
                href="tel:0507680483"
                className="text-2xl sm:text-3xl md:text-5xl font-black no-underline block mb-2"
                style={{ color: "#f16a9e" }}
              >
                050 768-04-83
              </a>
              <p className="text-sm text-gray-500">
                Дзвінки безкоштовні, Пн-Пт: 08:00 – 17:00
              </p>
            </div>

            {/* Адреса */}
            <div
              className="mb-4 md:mb-5 p-4 md:p-5 rounded-2xl"
              style={{ border: "2px solid #e8f4fe", background: "#f8fbff" }}
            >
              <h3 className="text-xs text-gray-400 uppercase font-semibold tracking-wider mb-2">
                Адреса офісу
              </h3>
              <p className="text-base sm:text-lg font-bold text-gray-800">
                54000, м. Миколаїв, вул. Новозаводська 7
              </p>
            </div>

            {/* Пошта */}
            <div
              className="mb-4 md:mb-5 p-4 md:p-5 rounded-2xl"
              style={{ border: "2px solid #e8f4fe", background: "#f8fbff" }}
            >
              <h3 className="text-xs text-gray-400 uppercase font-semibold tracking-wider mb-2">
                Електронна пошта
              </h3>
              <a
                href="mailto:mykolaivpastrans@gmail.com"
                className="text-base sm:text-lg font-bold no-underline transition-opacity hover:opacity-70 break-all"
                style={{ color: "#0E95F7" }}
              >
                mykolaivpastrans@gmail.com
              </a>
            </div>
          </div>

          {/* Права колонка — форма */}
          <div>
            <ContactsForm />
          </div>
        </div>
      </section>

      {/* Карта */}
      <section className="w-full h-64 sm:h-80 md:h-100 flex items-center justify-center text-center text-[#666]"
        style={{ borderTop: "4px solid #0E95F7" }}
      >
        <MapWrapper />
      </section>
    </main>
  );
}