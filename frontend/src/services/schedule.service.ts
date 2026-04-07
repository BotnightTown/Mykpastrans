/**
 * @packageDocumentation
 * Сервіс для отримання маршрутів міського транспорту з Strapi API.
 * @module services/schedule
 */

import apiClient from "@/lib/axios";
import { Route } from "@/types/schedule.types";

/**
 * Структура відповіді Strapi REST API для колекції маршрутів.
 *
 * @internal
 */
interface StrapiResponse {
  /** Масив маршрутів повернутих сервером. */
  data: Route[];
}

/**
 * Отримує список усіх маршрутів із розкладом рейсів.
 *
 * @remarks
 * Виконує `GET /api/routes` із параметром `populate: "schedule.trips"`,
 * щоб отримати вкладені компоненти розкладу разом із маршрутами.
 *
 * @returns Масив об'єктів {@link Route} із заповненим полем `schedule`.
 *
 * @throws {AxiosError} Якщо сервер недоступний або повернув помилку (4xx, 5xx).
 *
 * @example
 * ```typescript
 * const routes = await getRoutes();
 * routes.forEach(route => {
 *   console.log(route.routeNumber); // "81"
 * });
 * ```
 *
 * @public
 */
export async function getRoutes(): Promise<Route[]> {
  const { data } = await apiClient.get<StrapiResponse>("/api/routes", {
    params: {
      populate: "schedule.trips",
    },
  });

  return data.data;
}
