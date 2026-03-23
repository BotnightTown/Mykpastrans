import apiClient from "@/lib/axios";
import { Route } from "@/types/schedule.types";

interface StrapiResponse {
  data: Route[];
}

export async function getRoutes(): Promise<Route[]> {
  const { data } = await apiClient.get<StrapiResponse>("/api/routes", {
    params: {
      populate: "schedule.trips",
    },
  });

  return data.data;
}
