export interface BusTrip {
  id: number;
  time: string;
  note?: string;
  is_short?: boolean;
}

export interface BusDirection {
  id: number;
  endpoint_name: string;
  trips: BusTrip[];
}

export interface Route {
  id: number;
  number: string;
  title: string;
  schedule: BusDirection[];
}

// Strapi response wrappers
export interface StrapiItem<T> {
  id: number;
  attributes: T;
}

export interface StrapiResponse<T> {
  data: StrapiItem<T>[];
  meta: {
    pagination: {
      page: number;
      pageSize: number;
      pageCount: number;
      total: number;
    };
  };
}
