export interface Route {
  id: number;
  number: string;
  name: string;
}

export interface Stop {
  id: number;
  name: string;
}

export interface Schedule {
  id: number;
  time: string;
  route: Route;
  stop: Stop;
}

export interface StrapiResponse<T> {
  data: T[];
}