import apiClient from "@/lib/axios";
import { StrapiRouteStop } from "@/types/stops.types";
import { StrapiListResponse } from "@/types/news.types";

export interface GetRouteStopsParams {
  routeNumber?: string;
  direction?: "forward" | "backward";
}

async function fetchPage(
  params: GetRouteStopsParams,
  page: number,
): Promise<StrapiListResponse<StrapiRouteStop>> {
  const { routeNumber, direction } = params;

  const queryParams: Record<string, string | number> = {
    "pagination[page]": page,
    "pagination[pageSize]": 100,
    "populate[0]": "stop",
    "populate[1]": "route",
    "sort[0]": "route.number:asc",
    "sort[1]": "Order:asc",
  };

  if (routeNumber) {
    queryParams["filters[route][number][$eq]"] = routeNumber;
  }

  if (direction) {
    queryParams["filters[direction][$eq]"] = direction;
  }

  const response = await apiClient.get<StrapiListResponse<StrapiRouteStop>>(
    "/api/route-stops",
    { params: queryParams },
  );

  return response.data;
}

export async function getRouteStops(
  params: GetRouteStopsParams = {},
): Promise<StrapiRouteStop[]> {
  const first = await fetchPage(params, 1);
  const totalPages = first.meta.pagination.pageCount;
  const allData = [...first.data];

  if (totalPages > 1) {
    const pages = Array.from({ length: totalPages - 1 }, (_, i) => i + 2);
    const results = await Promise.all(pages.map((p) => fetchPage(params, p)));
    results.forEach((r) => allData.push(...r.data));
  }

  return allData;
}

export async function getRoutes() {
  const response = await apiClient.get("/api/routes", {
    params: {
      "pagination[pageSize]": 50,
      sort: "number:asc",
      fields: "number,title",
    },
  });
  return response.data;
}
