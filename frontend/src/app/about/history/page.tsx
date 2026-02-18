import Image from "next/image";
import { Metadata } from 'next'
import SectionTitle from "@/components/ui/SectionTitle";

export const metadata: Metadata = {
  title: 'Історія підприємства - «Миколаївпастранс»',
  description: 'Дізнайтеся про історію комунального підприємства Миколаївської міської ради «Миколаївпастранс», його розвиток та сучасність.',
}

export default function HistoryPage() {

  return (
    <main className="bg-white text-[#333]">
      <section className="bg-[#f4f4f4] px-[5%] py-12 border-b border-[#dddddd]">
        <div className="max-w-6xl mx-auto">
          <SectionTitle title="Історія підприємства" />
        </div>
      </section>

      <section className="px-[5%] py-16">
        <div className="max-w-6xl mx-auto flex flex-col gap-20">
          
          <div className="">
            <h2 className="text-3xl font-black uppercase border-b-2 border-(--primary-blue) inline-block mb-8">
              Заснування та перші кроки
            </h2>
            <p className="text-lg leading-relaxed mb-6">
              Історія комунального підприємства Миколаївської міської ради «Миколаївпастранс» почалася не просто з указу, а з гострої потреби міста у зміні транспортної парадигми. Протягом десятиліть Миколаїв залежав від приватних перевізників («маршруток»), що не забезпечували належного комфорту, безпеки та графіку.
            </p>
            <p className="text-lg leading-relaxed">
              Офіційною датою народження підприємства стало 16 листопада 2018 року, коли була зареєстрована юридична особа. Першим керівником став Олексій Ушаков. Головною метою створення було повернення місту контролю над ключовими маршрутами та впровадження стандартів «великого автобуса». Протягом першого пів року тривала масштабна підготовка: пошук бази, найм персоналу та розробка логістичних схем, які б з’єднали віддалені райони з центром.
            </p>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
              <h2 className="text-3xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-6">
                Ера «Зелених автобусів»: Перший успіх (2019–2021)
              </h2>
              <p className="text-lg leading-relaxed mb-4">
                Хоча ідея муніципального парку обговорювалася з початку 2000-х, реальний прорив стався у 2019 році. Завдяки програмі лізингу з «Укргазбанком», місто придбало перші 23 новенькі автобуси МАЗ 206086. Ці яскраві зелені машини стали символом транспортної реформи.
              </p>
              <p className="text-lg leading-relaxed mb-4">
                5 липня 2019 року — знакова дата, коли автобуси вперше виїхали на маршрути:
              </p>
              <ul className="text-lg leading-relaxed mb-4 ml-6 space-y-2">
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>№51 (Тернівка — Залізничний вокзал)</span>
                </li>
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>№81 (Намив — Ракетне Урочище)</span>
                </li>
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>№91 (Балабанівка — Центральний стадіон)</span>
                </li>
              </ul>
              <p className="text-lg leading-relaxed">
                Це був перший транспорт у місті, обладнаний кондиціонерами, системами відеоспостереження та низькою підлогою для маломобільних груп. Підприємство швидко здобуло довіру, перевозячи тисячі пасажирів щодня за фіксованим графіком, який можна було відстежити в онлайн-додатках.
              </p>
            </div>
            <div className="relative h-80 rounded-lg overflow-hidden shadow-lg">
              <Image 
                src="/history/00338584.jpg"
                alt="Автобус Миколаївпастранс 2020"
                fill
                className="object-cover"
              />
            </div>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div className="relative h-80 rounded-lg overflow-hidden shadow-lg order-2 lg:order-1">
              <Image 
                src="/history/photo_2022-07-25_11-10-20.jpg"
                alt="Технічне обслуговування в Миколаївпастранс"
                fill
                className="object-cover"
              />
            </div>
            <div className="order-1 lg:order-2">
              <h2 className="text-3xl font-black uppercase border-b-2 border-(--primary-blue) inline-block mb-6">
                Випробування війною та допомога партнерів (2022–2024)
              </h2>
              <p className="text-lg leading-relaxed mb-4">
                З початком повномасштабного вторгнення «Миколаївпастранс» став «артерією життя» для міста. Автобуси підприємства виконували небезпечні рейси з евакуації населення до кордону та Одеси.
              </p>
              <p className="text-lg leading-relaxed mb-4">
                У цей період парк зазнав втрат через обстріли, але на допомогу прийшли міжнародні партнери. Завдяки міжнародним партнерам, підприємство отримало:
              </p>
              <ul className="text-lg leading-relaxed mb-4 ml-6 space-y-2">
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>5 автобусів Solaris Urbino 18 від Варшави</span>
                </li>
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>6 потужних автобусів Volvo від норвезького міста Крістіансанн</span>
                </li>
                <li className="flex items-start">
                  <span className="mr-3">•</span>
                  <span>Автобуси SOR та Irisbus від Праги та Чехії</span>
                </li>
              </ul>
            </div>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-2 gap-10 items-center">
            <div>
              <h2 className="text-3xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-6">
                Допомога Одесі (Зима 2025–2026)
              </h2>
              <p className="text-lg leading-relaxed mb-4">
                Наприкінці 2025-го та на початку 2026-го років ситуація кардинально змінилася: тепер уже Миколаїв, який отримав потужну підтримку від міжнародних партнерів (Норвегії, Данії, Чехії та Туреччини), зміг простягнути руку допомоги сусідам з Одеси.
              </p>
              <p className="text-lg leading-relaxed">
                Через складну ситуацію з енергетикою та дефіцит водіїв в Одесі, миколаївське підприємство виділило частину свого оновленого парку (зокрема, європейські автобуси Volvo) для курсування на одеських маршрутах.
              </p>
              <p className="text-lg leading-relaxed">
              </p>
            </div>
            <div className="relative h-80 rounded-lg overflow-hidden shadow-lg">
              <Image 
                src="/history/e6cb4bd25afa4c22.jpg"
                alt="Автобус Миколаївпастранс 2020"
                fill
                className="object-cover"
              />
            </div>
          </div>

          <div className="">
            <h2 className="text-3xl font-black uppercase border-b-2 border-(--primary-blue) inline-block mb-8">
              Фотогалерея
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {["00023568.jpg", "00046464.jpg", "00049899.jpg", "00072098.jpg", "00094504.jpg", "00109799.jpg"].map((item, index) => (
                <div key={index} className="relative h-64 rounded-lg overflow-hidden shadow-lg hover:shadow-xl transition-shadow">
                  <Image 
                    src={`/history/${item}`}
                    alt={`Фото з архіву Миколаївпастранс ${item}`}
                    fill
                    className="object-cover hover:scale-105 transition-transform"
                  />
                </div>
              ))}
            </div>
          </div>

        </div>
      </section>
    </main>
  );
}