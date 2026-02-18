import SectionTitle from "@/components/ui/SectionTitle";
import { Metadata } from "next";
import { ContactsForm } from "./ContactsForm";
import MapWrapper from "./MapWrapper";

export const metadata: Metadata = {
  title: 'Контакти - «Миколаївпастранс»',
  description: 'Знайдіть контактну інформацію комунального підприємства Миколаївської міської ради «Миколаївпастранс», включаючи телефон, адресу та електронну пошту для зв\'язку.',
}

export default function ContactsPage() {

  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-350 mx-auto">
          <SectionTitle title="Контакти"/>
        </div>
      </section>

      <section className="px-[5%] py-16">
        <div className="max-w-350 mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10 lg:gap-16">
          <div>
            <h2 className="text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-8">
              Зв'яжіться з нами
            </h2>

            <div className="mb-8">
              <h3 className="text-sm text-[#666] uppercase mb-2">Гаряча лінія (скарги та пропозиції)</h3>
              <p>
                <a
                  href="tel:0507680483"
                  className="text-3xl md:text-4xl font-bold text-(--primary-blue) no-underline"
                >
                  050 768-04-83
                </a>
              </p>
              <p className="text-sm text-[#666] mt-2">Дзвінки безкоштовні, Пн-Пт: 08:00 - 17:00</p>
            </div>

            <div className="mb-8">
              <h3 className="text-sm text-[#666] uppercase mb-2">Адреса офісу</h3>
              <p className="text-xl font-semibold">54000, м. Миколаїв, пр. Миру 17г</p>
            </div>

            <div className="mb-8">
              <h3 className="text-sm text-[#666] uppercase mb-2">Електронна пошта</h3>
              <p>
                <a href="mailto:mykolaivpastrans@gmail.com" className="text-xl font-semibold no-underline">
                  mykolaivpastrans@gmail.com
                </a>
              </p>
            </div>

          </div>

          <div>
            <ContactsForm />
          </div>
        </div>
      </section>

      <section className="w-full h-80 md:h-100 mt-4 border-t-4 border-(--primary-blue) flex items-center justify-center text-center text-[#666]">
        <MapWrapper />
      </section>
    </main>
  );
}
