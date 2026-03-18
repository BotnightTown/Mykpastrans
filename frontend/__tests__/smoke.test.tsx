import { render, screen } from "@testing-library/react";
import "@testing-library/jest-dom";

// Мок для next/link
jest.mock("next/link", () => {
  return ({ href, children }: { href: string; children: React.ReactNode }) => (
    <a href={href}>{children}</a>
  );
});

// Мок для react-icons
jest.mock("react-icons/fa6", () => ({
  FaChevronDown: () => <svg data-testid="chevron-icon" />,
}));

import RouteShortInfo from "../src/components/ui/RouteShortInfo";
import HeaderLink from "../src/components/ui/HeaderLink";
import { ContactsForm } from "../src/app/contacts/ContactsForm";

// Мок для axios у ContactsForm
jest.mock("axios");

// ─────────────────────────────────────────────
// SMOKE ТЕСТ 1: RouteShortInfo рендериться
// ─────────────────────────────────────────────
describe("Smoke: RouteShortInfo", () => {
  test("компонент рендериться з правильними даними маршруту", () => {
    render(
      <RouteShortInfo
        routeNumber="21"
        routeName="Автовокзал - мікрорайон Котовського"
        intervalTime="15 хв"
        href="/passengers/schedule"
      />,
    );

    // Перевіряємо що номер маршруту відображається
    expect(screen.getByText("№ 21")).toBeInTheDocument();

    // Перевіряємо що назва маршруту відображається
    expect(
      screen.getByText("Автовокзал - мікрорайон Котовського"),
    ).toBeInTheDocument();

    // Перевіряємо що кнопка "Показати" є на сторінці
    expect(
      screen.getByRole("button", { name: "Показати" }),
    ).toBeInTheDocument();
  });
});

// ─────────────────────────────────────────────
// SMOKE ТЕСТ 2: HeaderLink рендериться
// ─────────────────────────────────────────────
describe("Smoke: HeaderLink", () => {
  test("компонент рендериться як посилання з випадаючим меню", () => {
    const dropdownItems = [
      { href: "/about/history", title: "Історія" },
      { href: "/about/rolling-stock", title: "Рухомий склад" },
    ];

    render(<HeaderLink href="/about" title="Про нас" items={dropdownItems} />);

    // Перевіряємо що заголовок посилання відображається
    expect(screen.getByText("Про нас")).toBeInTheDocument();

    // Перевіряємо що іконка стрілки є (є dropdown)
    expect(screen.getByTestId("chevron-icon")).toBeInTheDocument();

    // Перевіряємо що пункти меню присутні в DOM
    expect(screen.getByText("Історія")).toBeInTheDocument();
    expect(screen.getByText("Рухомий склад")).toBeInTheDocument();
  });
});

// ─────────────────────────────────────────────
// SMOKE ТЕСТ 3: ContactsForm рендериться
// ─────────────────────────────────────────────
describe("Smoke: ContactsForm", () => {
  test("форма звернення рендериться з усіма полями", () => {
    render(<ContactsForm />);

    // Перевіряємо заголовок форми
    expect(screen.getByText("Написати звернення")).toBeInTheDocument();

    // Перевіряємо що поля форми присутні
    expect(screen.getByPlaceholderText("Ім'я Прізвище")).toBeInTheDocument();
    expect(screen.getByPlaceholderText("+38 (0")).toBeInTheDocument();
    expect(
      screen.getByPlaceholderText("example@gmail.com"),
    ).toBeInTheDocument();

    // Перевіряємо кнопку відправки
    expect(
      screen.getByRole("button", { name: /надіслати звернення/i }),
    ).toBeInTheDocument();
  });
});
