export interface StrapiImage {
  id: number;
  documentId: string;
  url: string;
  alternativeText: string | null;
  width: number;
  height: number;
}

export interface StrapiCategory {
  id: number;
  documentId: string;
  name: string;
  slug: string;
}

export interface StrapiRichTextChild {
  type: string;
  text: string;
  bold?: boolean;
  italic?: boolean;
  underline?: boolean;
}

export interface StrapiRichText {
  type: string;
  children: StrapiRichTextChild[];
}

export interface StrapiArticle {
  id: number;
  documentId: string;
  title: string;
  content: StrapiRichText[];
  excerpt: string | null;
  slug: string;
  publishedTime: string | null;
  publishedAt: string;
  cover: StrapiImage | null;
  category: StrapiCategory | null;
}

export interface StrapiPagination {
  page: number;
  pageSize: number;
  pageCount: number;
  total: number;
}

export interface StrapiListResponse<T> {
  data: T[];
  meta: {
    pagination: StrapiPagination;
  };
}

export interface StrapiSingleResponse<T> {
  data: T;
  meta: object;
}
