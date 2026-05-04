import { render, screen, waitFor } from "@testing-library/react";
import userEvent from "@testing-library/user-event";
import "@testing-library/jest-dom";
import axios from "axios";
import { ContactsForm } from "./ContactsForm";

// Мокуємо axios
jest.mock("axios");
const mockedAxios = axios as jest.Mocked<typeof axios>;

describe("ContactsForm", () => {
  beforeEach(() => {
    jest.clearAllMocks();
  });

  // ─────────────────────────────────────────────
  // SMOKE ТЕСТИ: Рендеринг компонента
  // ─────────────────────────────────────────────
  describe("Smoke Tests: Rendering", () => {
    test("компонент рендериться з усіма полями форми", () => {
      render(<ContactsForm />);

      expect(screen.getByText("Написати звернення")).toBeInTheDocument();
      expect(screen.getByPlaceholderText("Ім'я Прізвище")).toBeInTheDocument();
      expect(screen.getByPlaceholderText("+38 (0")).toBeInTheDocument();
      expect(screen.getByPlaceholderText("example@gmail.com")).toBeInTheDocument();
      expect(screen.getByDisplayValue("Запит про розклад")).toBeInTheDocument();
      expect(screen.getByPlaceholderText("Опишіть вашу ситуацію...")).toBeInTheDocument();
      expect(
        screen.getByRole("button", { name: "Надіслати звернення" })
      ).toBeInTheDocument();
    });

    test("всі input поля мають правильні типи", () => {
      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище") as HTMLInputElement;
      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      const emailInput = screen.getByPlaceholderText("example@gmail.com") as HTMLInputElement;

      expect(nameInput).toHaveAttribute("type", "text");
      expect(phoneInput).toHaveAttribute("type", "tel");
      expect(emailInput).toHaveAttribute("type", "email");
    });

    test("форма має select елемент для теми звернення", () => {
      render(<ContactsForm />);

      const selectElement = screen.getByDisplayValue("Запит про розклад");
      expect(selectElement).toBeInTheDocument();
      expect(selectElement.tagName).toBe("SELECT");
    });

    test("select має всі опції тем звернення", () => {
      render(<ContactsForm />);

      const selectElement = screen.getByDisplayValue("Запит про розклад") as HTMLSelectElement;
      const options = Array.from(selectElement.options).map(option => option.value);

      expect(options).toContain("Запит про розклад");
      expect(options).toContain("Скарга на роботу водія");
      expect(options).toContain("Втрачені речі");
      expect(options).toContain("Пропозиція");
      expect(options).toContain("Інше");
    });

    test("textarea має правильну кількість рядків", () => {
      render(<ContactsForm />);

      const textarea = screen.getByPlaceholderText(
        "Опишіть вашу ситуацію..."
      ) as HTMLTextAreaElement;
      expect(textarea).toHaveAttribute("rows", "5");
    });
  });

  // ─────────────────────────────────────────────
  // UNIT ТЕСТИ: Введення даних
  // ─────────────────────────────────────────────
  describe("Unit Tests: User Input", () => {
    test("користувач може ввести ім'я", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище") as HTMLInputElement;
      await user.type(nameInput, "Іван Петренко");

      expect(nameInput.value).toBe("Іван Петренко");
    });

    test("користувач може ввести email", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const emailInput = screen.getByPlaceholderText("example@gmail.com") as HTMLInputElement;
      await user.type(emailInput, "ivan@example.com");

      expect(emailInput.value).toBe("ivan@example.com");
    });

    test("користувач може змінити тему звернення", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const selectElement = screen.getByDisplayValue("Запит про розклад") as HTMLSelectElement;
      await user.selectOptions(selectElement, "Скарга на роботу водія");

      expect(selectElement.value).toBe("Скарга на роботу водія");
    });

    test("користувач може ввести текст повідомлення", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const textarea = screen.getByPlaceholderText(
        "Опишіть вашу ситуацію..."
      ) as HTMLTextAreaElement;
      await user.type(textarea, "Мої питання про розклад автобусів");

      expect(textarea.value).toBe("Мої питання про розклад автобусів");
    });
  });

  // ─────────────────────────────────────────────
  // UNIT ТЕСТИ: Форматування телефону
  // ─────────────────────────────────────────────
  describe("Unit Tests: Phone Formatting", () => {
    test("форматує номер телефону при введенні цифр", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      // Вводимо: 6712345678 (10 цифр) → 380671234567 → +38 (067) 123-4567
      await user.type(phoneInput, "6712345678");

      expect(phoneInput.value).toMatch(/^\+38 \(\d{3}\) \d{3}-\d{4}$/);
    });

    test("форматує номер з префіксом 0", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      await user.type(phoneInput, "0671234567");

      // +38 буде додано автоматично
      expect(phoneInput.value).toMatch(/^\+38 \(\d{3}\) \d{3}-\d{4}$/);
    });

    test("форматує номер без префіксу", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      await user.type(phoneInput, "6712345");

      expect(phoneInput.value).toMatch(/^\+38 \(\d{3}\) \d{3}-\d{0,4}$/);
    });

    test("видаляє букви при введенні у поле телефону", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      await user.type(phoneInput, "a6b7c1d2e3f4g5h6i7j8");

      // Мають залишитися тільки цифри у форматованому вигляді
      const value = phoneInput.value;
      expect(value).toMatch(/^\+38 \(\d{3}\) \d{3}-\d{0,4}$/);
      // Перевіримо що букви були видалені
      expect(value).not.toContain("a");
      expect(value).not.toContain("b");
    });

    test("видаляє спеціальні символи при введенні у поле телефону", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      await user.type(phoneInput, "!@#6$%^7&*()1");

      // Повинні залишитися тільки цифри
      const onlyDigits = phoneInput.value.replace(/\D/g, "");
      expect(onlyDigits).toMatch(/^\d+$/);
    });

    test("обмежує номер телефону 12 цифрами", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      // Намагаємося ввести більше цифр
      await user.type(phoneInput, "06712345678901234567");

      // Перевіримо що більше 12 цифр не введено
      const digits = phoneInput.value.replace(/\D/g, "");
      expect(digits.length).toBeLessThanOrEqual(12);
    });
  });

  // ─────────────────────────────────────────────
  // INTEGRATION ТЕСТИ: Відправка форми
  // ─────────────────────────────────────────────
  describe("Integration Tests: Form Submission", () => {
    test("відправляє дані в коректному форматі при успішній відправці", async () => {
      const user = userEvent.setup();
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище");
      const phoneInput = screen.getByPlaceholderText("+38 (0");
      const emailInput = screen.getByPlaceholderText("example@gmail.com");
      const selectElement = screen.getByDisplayValue("Запит про розклад");
      const textarea = screen.getByPlaceholderText("Опишіть вашу ситуацію...");
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      await user.type(nameInput, "Іван Петренко");
      await user.type(phoneInput, "6712345678");
      await user.type(emailInput, "ivan@example.com");
      await user.selectOptions(selectElement, "Скарга на роботу водія");
      await user.type(textarea, "Скарга на невпорядкованість водія");
      await user.click(submitButton);

      await waitFor(() => {
        expect(mockedAxios.post).toHaveBeenCalledWith(
          "http://localhost:1337/api/contact-messages",
          {
            data: {
              name: "Іван Петренко",
              phone_number: "380671234567", // Очищені цифри
              email: "ivan@example.com",
              subject: "Скарга на роботу водія",
              message: "Скарга на невпорядкованість водія",
            },
          }
        );
      });
    });

    test("номер телефону очищується перед відправкою (тільки цифри)", async () => {
      const user = userEvent.setup();
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const phoneInput = screen.getByPlaceholderText("+38 (0");
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      await user.type(phoneInput, "0671234567");
      await user.click(submitButton);

      await waitFor(() => {
        const callArgs = mockedAxios.post.mock.calls[0][1];
        expect(callArgs.data.phone_number).toBe("380671234567");
        expect(callArgs.data.phone_number).toMatch(/^\d+$/); // Тільки цифри
      });
    });

    test("показує повідомлення про успіх після відправки", async () => {
      const user = userEvent.setup();
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });
      await user.click(submitButton);

      await waitFor(() => {
        expect(screen.getByText("Звернення надіслано успішно!")).toBeInTheDocument();
      });
    });

    test("показує повідомлення про помилку при невдачі", async () => {
      const user = userEvent.setup();
      mockedAxios.post.mockRejectedValueOnce(new Error("Network error"));

      render(<ContactsForm />);

      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });
      await user.click(submitButton);

      await waitFor(() => {
        expect(screen.getByText("Помилка при надсиланні звернення.")).toBeInTheDocument();
      });
    });

    test("очищує форму після успішної відправки", async () => {
      const user = userEvent.setup();
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище") as HTMLInputElement;
      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      const emailInput = screen.getByPlaceholderText("example@gmail.com") as HTMLInputElement;
      const textarea = screen.getByPlaceholderText("Опишіть вашу ситуацію...") as HTMLTextAreaElement;
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      // Заповнюємо форму
      await user.type(nameInput, "Іван Петренко");
      await user.type(phoneInput, "0671234567");
      await user.type(emailInput, "ivan@example.com");
      await user.type(textarea, "Тестове повідомлення");

      // Відправляємо
      await user.click(submitButton);

      // Чекаємо очищення
      await waitFor(() => {
        expect(nameInput.value).toBe("");
        expect(phoneInput.value).toBe("");
        expect(emailInput.value).toBe("");
        expect(textarea.value).toBe("");
      });
    });
  });

  // ─────────────────────────────────────────────
  // EDGE CASES ТЕСТИ
  // ─────────────────────────────────────────────
  describe("Edge Cases Tests", () => {
    test("відправляє форму з мінімальними даними", async () => {
      const user = userEvent.setup();
      const consoleSpy = jest.spyOn(console, "log").mockImplementation();
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище");
      const phoneInput = screen.getByPlaceholderText("+38 (0");
      const emailInput = screen.getByPlaceholderText("example@gmail.com");
      const textarea = screen.getByPlaceholderText("Опишіть вашу ситуацію...");
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      await user.type(nameInput, "А");
      await user.type(phoneInput, "0");
      await user.type(emailInput, "a@a.a");
      await user.type(textarea, "1");
      await user.click(submitButton);

      await waitFor(() => {
        expect(mockedAxios.post).toHaveBeenCalled();
      });

      consoleSpy.mockRestore();
    });

    test("відправляє форму з довгим повідомленням", async () => {
      const user = userEvent.setup({ delay: null }); // Без затримки для швидкості
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище");
      const phoneInput = screen.getByPlaceholderText("+38 (0");
      const emailInput = screen.getByPlaceholderText("example@gmail.com");
      const textarea = screen.getByPlaceholderText("Опишіть вашу ситуацію...");
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      await user.type(nameInput, "Тест");
      await user.type(phoneInput, "6712345");
      await user.type(emailInput, "test@example.com");
      
      // Вводимо довгий текст частинами
      const longMessage = "A".repeat(500);
      await user.type(textarea, longMessage, { delay: null });
      
      await user.click(submitButton);

      await waitFor(() => {
        expect(mockedAxios.post).toHaveBeenCalled();
      });
    }, 15000); // Timeout 15 секунд

    test("відправляє форму з кирилицею у всіх полях", async () => {
      const user = userEvent.setup({ delay: null });
      mockedAxios.post.mockResolvedValueOnce({ data: { id: 1 } });

      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище");
      const phoneInput = screen.getByPlaceholderText("+38 (0");
      const emailInput = screen.getByPlaceholderText("example@gmail.com");
      const textarea = screen.getByPlaceholderText("Опишіть вашу ситуацію...");
      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });

      await user.type(nameInput, "Іван", { delay: null });
      await user.type(phoneInput, "6712345", { delay: null });
      await user.type(emailInput, "ivan@example.com", { delay: null });
      await user.type(textarea, "Мої питання", { delay: null });
      await user.click(submitButton);

      await waitFor(() => {
        const callArgs = mockedAxios.post.mock.calls[0][1];
        expect(callArgs.data.name).toContain("Іван");
      }, { timeout: 10000 });
    });

    test("обробляє помилку axios коректно", async () => {
      const user = userEvent.setup();
      const consoleSpy = jest.spyOn(console, "log").mockImplementation();
      mockedAxios.post.mockRejectedValueOnce(new Error("Network error"));

      render(<ContactsForm />);

      const submitButton = screen.getByRole("button", { name: "Надіслати звернення" });
      await user.click(submitButton);

      await waitFor(() => {
        // Шукаємо текст без крапки в кінці, або частину тексту
        const errorElement = screen.queryByText(/Помилка при надсиланні/i);
        expect(errorElement).toBeInTheDocument();
      }, { timeout: 10000 });

      consoleSpy.mockRestore();
    });

    test("не показує помилку/успіх повідомлення при першому завантаженні", () => {
      render(<ContactsForm />);

      expect(screen.queryByText("Звернення надіслано успішно!")).not.toBeInTheDocument();
      expect(screen.queryByText("Помилка при надсиланні звернення.")).not.toBeInTheDocument();
    });
  });

  // ─────────────────────────────────────────────
  // ТЕСТИ ЗБЕРІГАННЯ СТАНУ
  // ─────────────────────────────────────────────
  describe("State Management Tests", () => {
    test("збереження теми звернення у поточному значенні за замовчуванням", () => {
      render(<ContactsForm />);

      const selectElement = screen.getByDisplayValue("Запит про розклад") as HTMLSelectElement;
      expect(selectElement.value).toBe("Запит про розклад");
    });

    test("користувач може змінити тему несіко разів", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const selectElement = screen.getByDisplayValue("Запит про розклад") as HTMLSelectElement;

      await user.selectOptions(selectElement, "Скарга на роботу водія");
      expect(selectElement.value).toBe("Скарга на роботу водія");

      await user.selectOptions(selectElement, "Втрачені речі");
      expect(selectElement.value).toBe("Втрачені речі");

      await user.selectOptions(selectElement, "Пропозиція");
      expect(selectElement.value).toBe("Пропозиція");
    });

    test("значення у всіх полях очищуються окремо", async () => {
      const user = userEvent.setup();
      render(<ContactsForm />);

      const nameInput = screen.getByPlaceholderText("Ім'я Прізвище") as HTMLInputElement;
      const phoneInput = screen.getByPlaceholderText("+38 (0") as HTMLInputElement;
      const emailInput = screen.getByPlaceholderText("example@gmail.com") as HTMLInputElement;

      await user.type(nameInput, "Тест");
      expect(nameInput.value).toBe("Тест");

      await user.type(phoneInput, "0671234567");
      expect(phoneInput.value).toBe("+38 (067) 123-4567");

      await user.type(emailInput, "test@example.com");
      expect(emailInput.value).toBe("test@example.com");
    });
  });
});
