import apiClient from "@/lib/axios";
import {
  StrapiArticle,
  StrapiListResponse,
  StrapiSingleResponse,
} from "@/types/news.types";

export interface GetArticlesParams {
  page?: number;
  pageSize?: number;
  search?: string;
  category?: string;
}

export async function getArticles(
  params: GetArticlesParams = {},
): Promise<StrapiListResponse<StrapiArticle>> {
  const { search, category } = params;

  const queryParams: Record<string, any> = {
    // Вимикаємо обмеження (працює в багатьох версіях Strapi)
    "pagination[limit]": -1,
    populate: "cover,category",
    sort: "publishedAt:desc",
  };

  if (search) {
    queryParams["filters[title][$contains]"] = search;
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

export async function getArticleBySlug(slug: string) {
  try {
    const response = await apiClient.get("/api/article-news", {
      params: {
        // Замість рядка з дужками передаємо об'єкт
        "filters[slug][$eq]": slug,
        populate: "*", // Використовуйте зірочку для тесту, щоб підтягнути все
      },
    });
    return response.data;
  } catch (error: any) {
    // Якщо знову буде 400, ми побачимо чому саме
    console.error(
      "STRAPI ERROR:",
      error.response?.data?.error || error.message,
    );
    return null;
  }
}

export async function getCategories() {
  const response = await apiClient.get("/api/categories", {
    params: { sort: "name:asc" },
  });

  return response.data;
}
