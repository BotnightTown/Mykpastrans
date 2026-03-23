import apiClient from "@/lib/axios";
import { Route, StrapiResponse } from "@/types/schedule.types";

export async function getRoutes(): Promise<Route[]> {
  const { data } = await apiClient.get<StrapiResponse<Omit<Route, "id">>>(
    "/api/routes",
    {
      params: {
        populate: "schedule.trips",
      },
    },
  );

  return data.data.map((item) => ({
    id: item.id,
    ...item.attributes,
  }));
}
