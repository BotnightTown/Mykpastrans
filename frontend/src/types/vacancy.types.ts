import { StrapiRichText } from "./news.types";

export interface StrapiVacancy {
  id: number;
  documentId: string;
  title: string;
  description: StrapiRichText[];
  contactNumber: string | null;
  slug: string;
  timePublishedAt: string | null;
  createdAt: string;
  publishedAt: string;
}
