// jest.setup.ts - Додайте це до вашого проєкту (якщо не існує)
// Цей файл налаштовує Jest для роботи з React тестами

import "@testing-library/jest-dom";

// Якщо у вас є .env.test файл з змінними окруження
process.env.NEXT_PUBLIC_API_URL = "http://localhost:1337";

// Зберігання window.matchMedia для тестів
Object.defineProperty(window, "matchMedia", {
  writable: true,
  value: jest.fn().mockImplementation((query) => ({
    matches: false,
    media: query,
    onchange: null,
    addListener: jest.fn(),
    removeListener: jest.fn(),
    addEventListener: jest.fn(),
    removeEventListener: jest.fn(),
    dispatchEvent: jest.fn(),
  })),
});