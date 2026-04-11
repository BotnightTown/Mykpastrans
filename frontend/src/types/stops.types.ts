export interface StrapiStop {
  id: number;
  documentId: string;
  name: string;
  note: string | null;
  createdAt: string;
  publishedAt: string;
}

export interface StrapiRouteStop {
  id: number;
  documentId: string;
  Order: number;
  direction: "forward" | "backward";
  onDemand: boolean;
  createdAt: string;
  publishedAt: string;
  route: {
    id: number;
    documentId: string;
    number: string;
    title: string;
    intervalTime: string;
  };
  stop: StrapiStop;
}
