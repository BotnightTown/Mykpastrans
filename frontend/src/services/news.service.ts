import apiClient from "@/lib/axios";
import { StrapiArticle, StrapiListResponse } from "@/types/news.types";

export interface GetArticlesParams {
  page?: number;
  pageSize?: number;
  search?: string;
  category?: string;
}

export async function getArticles(
  params: GetArticlesParams = {},
): Promise<StrapiListResponse<StrapiArticle>> {
  const { page = 1, pageSize = 9, search, category } = params;

  const queryParams: Record<string, string | number> = {
    "pagination[page]": page,
    "pagination[pageSize]": pageSize,
    "populate[0]": "cover",
    "populate[1]": "category",
    sort: "publishedAt:desc",
  };

  if (search) {
    queryParams["filters[title][$containsi]"] = search;
  }

  if (category) {
    queryParams["filters[category][slug][$eq]"] = category;
  }

  const response = await apiClient.get<StrapiListResponse<StrapiArticle>>(
    "/api/article-news",
    { params: queryParams },
  );

  return response.data;
}

export async function getArticleBySlug(
  slug: string,
): Promise<StrapiListResponse<StrapiArticle>> {
  const response = await apiClient.get<StrapiListResponse<StrapiArticle>>(
    "/api/article-news",
    {
      params: {
        "filters[slug][$eq]": slug,
        "populate[0]": "cover",
        "populate[1]": "category",
      },
    },
  );

  return response.data;
}

export async function getCategories() {
  const response = await apiClient.get("/api/categories", {
    params: { sort: "name:asc" },
  });

  return response.data;
}
