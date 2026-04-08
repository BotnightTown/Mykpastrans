export interface BusTrip {
  id: number;
  time: string;
  note?: string | null;
  is_short?: boolean | null;
}

export interface BusDirection {
  id: number;
  endpoint_name: string;
  isWeekend: boolean;
  trips: BusTrip[];
}

export interface Route {
  id: number;
  documentId: string;
  number: string;
  title: string;
  schedule: BusDirection[];
}
