import { render, screen } from "@testing-library/react";
import "@testing-library/jest-dom";

jest.mock("next/link", () => {
  return ({ href, children }: { href: string; children: React.ReactNode }) => (
    <a href={href}>{children}</a>
  );
});

jest.mock("react-icons/fa6", () => ({
  FaChevronDown: () => <svg data-testid="chevron-icon" />,
}));

import RouteShortInfo from "../src/components/ui/RouteShortInfo";
import HeaderLink from "../src/components/ui/HeaderLink";
import { ContactsForm } from "../src/app/contacts/ContactsForm";

jest.mock("axios");

describe("Smoke: RouteShortInfo", () => {
  test("компонент рендериться з правильними даними маршруту", () => {
    render(
      <RouteShortInfo
        routeNumber="21"
        routeName="Намив – Залізничний вокзал"
        intervalTime="15 хв"
      />,
    );

    expect(screen.getByText("№ 21")).toBeInTheDocument();

    expect(screen.getByText("Намив – Залізничний вокзал")).toBeInTheDocument();

    expect(
      screen.getByRole("link", { name: "Детальніше" }),
    ).toBeInTheDocument();
  });
});

describe("Smoke: HeaderLink", () => {
  test("компонент рендериться як посилання з випадаючим меню", () => {
    const dropdownItems = [
      { href: "/about/history", title: "Історія" },
      { href: "/about/rolling-stock", title: "Рухомий склад" },
    ];

    render(<HeaderLink href="/about" title="Про нас" items={dropdownItems} />);

    expect(screen.getByText("Про нас")).toBeInTheDocument();

    expect(screen.getByTestId("chevron-icon")).toBeInTheDocument();

    expect(screen.getByText("Історія")).toBeInTheDocument();
    expect(screen.getByText("Рухомий склад")).toBeInTheDocument();
  });
});

describe("Smoke: ContactsForm", () => {
  test("форма звернення рендериться з усіма полями", () => {
    render(<ContactsForm />);

    expect(screen.getByText("Написати звернення")).toBeInTheDocument();

    expect(screen.getByPlaceholderText("Ім'я Прізвище")).toBeInTheDocument();
    expect(screen.getByPlaceholderText("+38 (0")).toBeInTheDocument();
    expect(
      screen.getByPlaceholderText("example@gmail.com"),
    ).toBeInTheDocument();

    expect(
      screen.getByRole("button", { name: /надіслати звернення/i }),
    ).toBeInTheDocument();
  });
});
