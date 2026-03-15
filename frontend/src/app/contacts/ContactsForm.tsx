"use client";

import axios from "axios";
import { useState } from "react";

export function ContactsForm() {
  const [name, setName] = useState<string>("");
  const [phone, setPhone] = useState<string>("");
  const [email, setEmail] = useState<string>("");
  const [subject, setSubject] = useState<string>("Запит про розклад");
  const [description, setDescription] = useState<string>("");

  const [message, setMessage] = useState<string>("");
  const [messageType, setMessageType] = useState<"success" | "error" | null>(
    null,
  );

  const handleInputPhone = (e: React.ChangeEvent<HTMLInputElement>) => {
    let input = e.target.value;

    let digits = input.replace(/\D/g, "");

    if (digits.startsWith("380")) {
      digits = digits.substring(3);
    } else if (digits.startsWith("38")) {
      digits = digits.substring(2);
    }

    if (digits.length > 0) {
      if (digits.startsWith("0")) {
        digits = "38" + digits;
      } else {
        digits = "380" + digits;
      }
    }
    digits = digits.substring(0, 12);

    let formatted = "";
    if (digits.length > 0) {
      formatted = "+" + digits.substring(0, 2);
      if (digits.length > 2) {
        formatted += " (" + digits.substring(2, 5);
      }
      if (digits.length > 5) {
        formatted += ") " + digits.substring(5, 8);
      }
      if (digits.length > 8) {
        formatted += "-" + digits.substring(8, 12);
      }
    }

    setPhone(formatted);
  };

  const clearPhone = (phone: string) => {
    return phone.replace(/\D/g, "");
  };

  const handleRequest = async () => {
    try {
      await axios.post("http://localhost:1337/api/contact-messages", {
        data: {
          name,
          phone_number: clearPhone(phone),
          email,
          subject,
          message: description,
        },
      });
      setName("");
      setPhone("");
      setEmail("");
      setSubject("");
      setDescription("");
      setMessageType("success");
      setMessage("Звернення надіслано успішно!");
    } catch (error) {
      console.log(error);
      setMessageType("error");
      setMessage("Помилка при надсиланні звернення.");
    }
  };

  return (
    <div id="feedback">
      <h2 className="text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-8">
        Написати звернення
      </h2>

      <form className="space-y-6">
        <div>
          <label className="block mb-2 font-semibold text-sm">
            Ваше Прізвище та Ім'я
          </label>
          <input
            id="name"
            name="name"
            type="text"
            placeholder="Ім'я Прізвище"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">
            Контактний телефон
          </label>
          <input
            id="phone"
            name="phone"
            type="tel"
            value={phone}
            onChange={handleInputPhone}
            placeholder="+38 (0"
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">
            Електронна пошта
          </label>
          <input
            id="email"
            name="email"
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="example@gmail.com"
            required
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>

        <div>
          <label className="block mb-2 font-semibold text-sm">
            Тема звернення
          </label>
          <select
            id="subject"
            name="subject"
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
          <label className="block mb-2 font-semibold text-sm">
            Повідомлення
          </label>
          <textarea
            id="description"
            name="description"
            rows={5}
            placeholder="Опишіть вашу ситуацію..."
            required
            value={description}
            onChange={(e) => setDescription(e.target.value)}
            className="w-full px-3 py-3 border border-[#dddddd] rounded-xs text-base outline-none resize-y focus:border-(--primary-blue) focus:ring-2 focus:ring-[rgba(14,149,247,0.12)]"
          />
        </div>
        {message && (
          <p
            className={`p-3 rounded text-sm font-semibold ${
              messageType === "success"
                ? "bg-green-100 text-green-700 border border-green-300"
                : "bg-red-100 text-red-700 border border-red-300"
            }`}
          >
            {message}
          </p>
        )}
        <button
          type="button"
          className="w-full bg-(--primary-blue) hover:bg-[#0b7ac9] text-white border-none py-4 px-8 font-bold uppercase cursor-pointer transition-colors"
          onClick={handleRequest}
        >
          Надіслати звернення
        </button>
      </form>
    </div>
  );
}
