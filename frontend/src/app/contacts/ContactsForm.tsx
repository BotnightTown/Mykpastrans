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
  const [messageType, setMessageType] = useState<"success" | "error" | null>(null);

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
      if (digits.length > 2) formatted += " (" + digits.substring(2, 5);
      if (digits.length > 5) formatted += ") " + digits.substring(5, 8);
      if (digits.length > 8) formatted += "-" + digits.substring(8, 12);
    }

    setPhone(formatted);
  };

  const clearPhone = (phone: string) => phone.replace(/\D/g, "");

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

  const inputClass = "w-full px-4 py-2.5 rounded-lg text-sm outline-none transition-all";
  const inputStyle = {
    border: "2px solid #e8f4fe",
    background: "#f8fbff",
  };

  return (
    <div id="feedback">
      {/* Підзаголовок — без змін */}
      <h2 className="text-2xl font-black uppercase border-b-2 border-(--accent-pink) inline-block mb-8">
        Написати звернення
      </h2>

      <form className="space-y-4">

        <div>
          <label className="block mb-1.5 font-semibold text-sm text-gray-700">
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
            className={inputClass}
            style={inputStyle}
            onFocus={(e) => { e.currentTarget.style.border = "2px solid #0E95F7"; e.currentTarget.style.background = "#fff"; }}
            onBlur={(e) => { e.currentTarget.style.border = "2px solid #e8f4fe"; e.currentTarget.style.background = "#f8fbff"; }}
          />
        </div>

        <div>
          <label className="block mb-1.5 font-semibold text-sm text-gray-700">
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
            className={inputClass}
            style={inputStyle}
            onFocus={(e) => { e.currentTarget.style.border = "2px solid #0E95F7"; e.currentTarget.style.background = "#fff"; }}
            onBlur={(e) => { e.currentTarget.style.border = "2px solid #e8f4fe"; e.currentTarget.style.background = "#f8fbff"; }}
          />
        </div>

        <div>
          <label className="block mb-1.5 font-semibold text-sm text-gray-700">
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
            className={inputClass}
            style={inputStyle}
            onFocus={(e) => { e.currentTarget.style.border = "2px solid #0E95F7"; e.currentTarget.style.background = "#fff"; }}
            onBlur={(e) => { e.currentTarget.style.border = "2px solid #e8f4fe"; e.currentTarget.style.background = "#f8fbff"; }}
          />
        </div>

        <div>
          <label className="block mb-1.5 font-semibold text-sm text-gray-700">
            Тема звернення
          </label>
          <select
            id="subject"
            name="subject"
            value={subject}
            onChange={(e) => setSubject(e.target.value)}
            className={inputClass}
            style={inputStyle}
            onFocus={(e) => { e.currentTarget.style.border = "2px solid #0E95F7"; e.currentTarget.style.background = "#fff"; }}
            onBlur={(e) => { e.currentTarget.style.border = "2px solid #e8f4fe"; e.currentTarget.style.background = "#f8fbff"; }}
          >
            <option>Запит про розклад</option>
            <option>Скарга на роботу водія</option>
            <option>Втрачені речі</option>
            <option>Пропозиція</option>
            <option>Інше</option>
          </select>
        </div>

        <div>
          <label className="block mb-1.5 font-semibold text-sm text-gray-700">
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
            className={`${inputClass} resize-y`}
            style={inputStyle}
            onFocus={(e) => { e.currentTarget.style.border = "2px solid #0E95F7"; e.currentTarget.style.background = "#fff"; }}
            onBlur={(e) => { e.currentTarget.style.border = "2px solid #e8f4fe"; e.currentTarget.style.background = "#f8fbff"; }}
          />
        </div>

        {message && (
          <p
            className={`p-3 rounded-lg text-sm font-semibold ${
              messageType === "success"
                ? "bg-green-50 text-green-700 border border-green-200"
                : "bg-red-50 text-red-700 border border-red-200"
            }`}
          >
            {message}
          </p>
        )}

        <button
          type="button"
          onClick={handleRequest}
          className="w-full text-white font-bold uppercase tracking-wider rounded-lg transition-all hover:opacity-90 active:scale-95"
          style={{
            background: "#FF7AAD",
            paddingTop: "10px",
            paddingBottom: "10px",
          }}
        >
          Надіслати звернення
        </button>

      </form>
    </div>
  );
}