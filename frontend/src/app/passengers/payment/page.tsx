import { Metadata } from "next";
import Image from "next/image";
import SectionTitle from "@/components/ui/SectionTitle";

export const metadata: Metadata = {
  title: "Способи оплати - «Миколаївпастранс»",
  description:
    "Інформація про оплату проїзду в автобусах КП «Миколаївпастранс»: готівкою або банківською карткою. Вартість разового проїзду — 15 грн.",
};

const benefitsList = [
  "Особи з інвалідністю I та II груп",
  "Учасники бойових дій",
  "Особи, які постраждали внаслідок Чорнобильської катастрофи (1 та 2 категорії)",
  "Пенсіонери за віком",
  "Діти-сироти та діти, позбавлені батьківського піклування",
  "Ветерани військової служби та органів внутрішніх справ",
];

export default function PaymentPage() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Способи оплати" />
        </div>
      </section>

      <section className="px-[5%] py-16" id="tariffs">
        <div className="max-w-6xl mx-auto grid grid-cols-1 lg:grid-cols-2 gap-10">
          <article className="bg-white border border-[#e4e4e4] shadow-sm p-8">
            <h2 className="text-2xl font-black uppercase border-b-2 border-(--primary-blue) inline-block mb-6">
              Оплата готівкою
            </h2>
            <p className="text-lg leading-relaxed mb-4">
              Передайте водію <span className="font-bold">15 грн</span> та
              отримайте паперовий квиток.
            </p>
            <p className="text-base text-[#666] mb-6">
              Зберігайте квиток до завершення поїздки, щоб підтвердити оплату у
              разі перевірки.
            </p>

            <div className="border border-dashed border-[#cfcfcf] bg-[#fafafa] p-4">
              <p className="text-sm uppercase text-[#666] mb-3">Фото квитка</p>
              <div className="relative h-75 w-full overflow-hidden rounded-md border border-[#dddddd]">
                <Image
                  src="/627846470_1390376899551121_5410019242886741484_n.jpg"
                  alt="Приклад паперового квитка для оплати готівкою"
                  fill
                  className="object-cover"
                />
              </div>
            </div>
          </article>

          <article className="bg-white border border-[#e4e4e4] shadow-sm p-8">
            <h2 className="text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-6">
              Оплата банківською карткою
            </h2>
            <p className="text-lg leading-relaxed mb-4">
              Прикладіть банківську картку або смартфон з NFC до терміналу
              водія.
            </p>
            <p className="text-base text-[#666] mb-6">
              Після успішної транзакції водій зобов'язаний видати квиток, що
              підтверджує оплату.
            </p>

            <div className="bg-[#f8f9fa] border-l-4 border-(--primary-blue) p-4">
              <p className="text-sm uppercase text-[#666]">
                Вартість разового проїзду
              </p>
              <p className="text-4xl font-black text-(--primary-blue) leading-none mt-2">
                15 грн
              </p>
            </div>
          </article>
        </div>
      </section>

      <section className="px-[5%] pb-20" id="privilege">
        <div className="max-w-6xl mx-auto bg-[#f8f9fa] border border-[#e4e4e4] p-8">
          <h2 className="text-2xl font-black uppercase border-b-2 border-(--primary-blue) inline-block mb-6">
            Пільговий проїзд
          </h2>
          <p className="text-base text-[#666] mb-5">
            Право пільгового проїзду надається згідно з чинним законодавством
            України та за наявності оригіналу документів.
          </p>
          <ul className="grid grid-cols-1 md:grid-cols-2 gap-x-10 gap-y-3 list-none m-0 p-0">
            {benefitsList.map((item) => (
              <li key={item} className="flex items-start gap-3 list-disc">
                <span className="text-(--accent-pink) font-black leading-none mt-1">
                  •
                </span>
                <span>{item}</span>
              </li>
            ))}
          </ul>
        </div>
      </section>
    </main>
  );
}
