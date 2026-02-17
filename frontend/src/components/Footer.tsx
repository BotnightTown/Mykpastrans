export default function Footer(){
  return(
    <footer className="bg-[#1a1a1a] text-white p-[4rem_5%_2rem]">
      <div className="max-w-325 mx-auto grid grid-cols-4 gap-12 mb-16">
        <div className="footer-col">
          <h2 className="text-[#0e95f7] mb-4 text-2xl font-bold">Миколаївпастранс</h2>
          <p className="text-[#888] text-sm">Комунальне підприємство, що забезпечує якісне та безпечне перевезення мешканців міста Миколаєва.</p>
        </div>
        <div className="footer-col">
          <h4 className="text-(--accent-pink) mb-6 uppercase text-sm font-bold">Інформація</h4>
          <ul className="space-y-2">
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Про нас</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Тарифи</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Пільги</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Вакансії</a></li>
          </ul>
        </div>
        <div className="footer-col">
          <h4 className="text-(--accent-pink) mb-6 uppercase text-sm font-bold">Підтримка</h4>
          <ul className="space-y-2">
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Контакти</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Гаряча лінія</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Скарги</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">FAQ</a></li>
          </ul>
        </div>
        <div className="footer-col">
          <h4 className="text-(--accent-pink) mb-6 uppercase text-sm font-bold">Соціальні мережі</h4>
          <ul className="space-y-2">
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Facebook</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Instagram</a></li>
            <li><a href="#" className="text-[#aaa] text-sm hover:text-white transition-colors">Tik-Tok</a></li>
          </ul>
        </div>
      </div>
      <div className="max-w-325 mx-auto pt-8 border-t border-[#333] flex justify-between text-xs text-[#666]">
        <p>&copy; 2026 КП "Миколаївпастранс". Всі права захищені.</p>
        <p>Офіційний веб-ресурс міста Миколаїв</p>
      </div>
    </footer>
  )
}