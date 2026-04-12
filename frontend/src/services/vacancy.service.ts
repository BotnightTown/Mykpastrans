import apiClient from "@/lib/axios";
import { StrapiVacancy } from "@/types/vacancy.types";
import { StrapiListResponse } from "@/types/news.types";

export async function getVacancies(): Promise<
  StrapiListResponse<StrapiVacancy>
> {
  const response = await apiClient.get<StrapiListResponse<StrapiVacancy>>(
    "/api/vacancies",
    { params: { sort: "publishedAt:desc" } },
  );
  return response.data;
}

export async function getVacancyBySlug(
  slug: string,
): Promise<StrapiListResponse<StrapiVacancy>> {
  const response = await apiClient.get<StrapiListResponse<StrapiVacancy>>(
    "/api/vacancies",
    { params: { "filters[slug][$eq]": slug } },
  );
  return response.data;
}
