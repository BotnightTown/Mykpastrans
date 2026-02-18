'use client';

import { useState } from "react";

export function ContactsForm() {
  const [name, setName] = useState("");
  const [phone, setPhone] = useState('');
  const [email, setEmail] = useState('');
  const [subject, setSubject] = useState('');
  const [description, setDescription] = useState("");

  const handleInputPhone = (e: React.ChangeEvent<HTMLInputElement>) => {
    let input = e.target.value;

    let digits = input.replace(/\D/g, '');

    if (digits.startsWith('0')) {
      digits = '38' + digits;
    } 
    else if (digits.startsWith('80')) {
      digits = '3' + digits;
    }
    digits = digits.substring(0, 12);

    let formatted = '';
    if (digits.length > 0) {
      formatted = '+' + digits.substring(0, 2);
      if (digits.length > 2) {
        formatted += ' (' + digits.substring(2, 5);
      }
      if (digits.length > 5) {
        formatted += ') ' + digits.substring(5, 8);
      }
      if (digits.length > 8) {
        formatted += '-' + digits.substring(8, 12);
      }
    }

    setPhone(formatted);
  };

  return (
    <div>
      <h2 className="text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-8">
        Написати звернення
      </h2>

      <form className="space-y-6">
        <div>
          <label className="block mb-2 font-semibold text-sm">Ваше Прізвище та Ім'я</label>
          <input
            type="text"
            placeholder="Андрій Мельник"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">Контактний телефон</label>
          <input
            type="tel"
            value={phone}
            onChange={handleInputPhone}
            placeholder="+38 (099) 123-4567"
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">Електронна пошта</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="example@gmail.com"
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">Тема звернення</label>
          <select 
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
            value={subject}
            onChange={(e) => setSubject(e.target.value)}
          >
            <option>Запит про розклад</option>
            <option>Скарга на роботу водія</option>
            <option>Втрачені речі</option>
            <option>Пропозиція</option>
            <option>Інше</option>
          </select>
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">Повідомлення</label>
          <textarea
            rows={5}
            placeholder="Опишіть вашу ситуацію..."
            required
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none resize-y focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <button
          type="submit"
          className="w-full bg-(--primary-blue) hover:bg-[#0b7ac9] text-white border-none py-4 px-8 font-bold uppercase cursor-pointer transition-colors"
        >
          Надіслати звернення
        </button>
      </form>
    </div>
  );
}
