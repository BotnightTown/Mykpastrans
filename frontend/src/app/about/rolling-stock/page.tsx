import SectionTitle from "@/components/ui/SectionTitle";
import TransportCard from "@/components/TransportCard";

const rollingStockData = [
  {
    model: "МАЗ-206",
    image: "/rolling-stock/00101320.jpg",
    description:
      "Низькопідлоговий автобус середнього класу. Компактний та маневровий, ідеально підходить для маршрутів з помірним пасажиропотоком.",
  },
  {
    model: "ЗАЗ A10C",
    image: "/rolling-stock/00249913.jpg",
    description:
      "Український міський автобус середнього класу. Обладнаний пандусом для маломобільних груп населення та сучасною системою вентиляції.",
  },
  {
    model: "Mercedes-Benz O 530 Citaro",
    image: "/rolling-stock/00229600.jpg",
    description:
      "Легендарний німецький автобус великого класу. Вирізняється високим рівнем комфорту, плавністю ходу та ергономічним дизайном салону.",
  },
  {
    model: "Solaris Urbino III 18",
    image: "/rolling-stock/00060964.jpg",
    description:
      "Зчленований автобус («гармошка») польського виробництва. Призначений для магістральних маршрутів з надвисоким пасажиропотоком.",
  },
  {
    model: "SOR NB 12",
    image: "/rolling-stock/00239960.jpg",
    description:
      "Чеський низькопідлоговий міський автобус. Має унікальну конфігурацію з чотирма дверима, що забезпечує надшвидку посадку та висадку пасажирів.",
  },
  {
    model: "Volvo 8700",
    image: "/rolling-stock/00317556.jpg",
    description:
      "Надійний шведський автобус великої місткості. Відомий своїми стандартами безпеки та витривалістю в інтенсивних умовах міської експлуатації.",
  },
  {
    model: "MAN A21 Lion's City NL 283",
    image: "/rolling-stock/00127169.jpg",
    description:
      "Преміальний німецький низькопідлоговий автобус. Поєднує екологічність двигуна з максимальною зручністю для пасажирів усередині салону.",
  },
  {
    model: "Volvo 8900",
    image: "/rolling-stock/00137754.jpg",
    description:
      "Сучасна полегшена модель шведського концерну. Завдяки алюмінієвому кузову є більш енергоефективним та екологічним варіантом для міста.",
  },
];

export default function RollingStock() {
  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Рухомий склад" />
        </div>
      </section>

      <div className="max-w-6xl mx-auto px-8 flex flex-col gap-12 py-16">
        <section className="flex flex-col gap-8">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            {rollingStockData.map((item, index) => (
              <TransportCard
                key={index}
                model={item.model}
                image={item.image}
                description={item.description}
              />
            ))}
          </div>
        </section>

        <section className="bg-gray-50 p-10 rounded-xl border border-gray-200">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 text-center">
            <div>
              <p className="text-4xl font-black text-(--primary-blue)">45+</p>
              <p className="text-gray-600 uppercase font-bold text-sm mt-2">
                Одиниць техніки
              </p>
            </div>
            <div>
              <p className="text-4xl font-black text-(--accent-pink)">100%</p>
              <p className="text-gray-600 uppercase font-bold text-sm mt-2">
                Низькопідлогові
              </p>
            </div>
            <div>
              <p className="text-4xl font-black text-(--primary-blue)">18</p>
              <p className="text-gray-600 uppercase font-bold text-sm mt-2">
                Годин на лінії щодня
              </p>
            </div>
          </div>
        </section>
      </div>
    </main>
  );
}
