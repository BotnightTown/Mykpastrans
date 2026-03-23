import { Schedule } from '@/types/schedule.types';

export async function getSchedules(): Promise<Schedule[]> {
  return [
    {
      id: 1,
      time: '06:15',
      route: { id: 1, number: '91', name: 'Маршрут 91' },
      stop: { id: 1, name: 'Центральний стадіон' },
    },
    {
      id: 2,
      time: '06:20',
      route: { id: 1, number: '91', name: 'Маршрут 91' },
      stop: { id: 2, name: 'вул. Водопровідна' },
    },
    {
      id: 3,
      time: '06:35',
      route: { id: 1, number: '91', name: 'Маршрут 91' },
      stop: { id: 3, name: '...' },
    },
    {
      id: 4,
      time: '07:32',
      route: { id: 1, number: '91', name: 'Маршрут 91' },
      stop: { id: 4, name: 'вул. Костянтина Сергієнка' },
    },
    {
      id: 5,
      time: '06:15',
      route: { id: 2, number: '1', name: 'Маршрут 1' },
      stop: { id: 5, name: 'м/н Тернівка' },
    },
    {
      id: 6,
      time: '06:20',
      route: { id: 2, number: '1', name: 'Маршрут 1' },
      stop: { id: 6, name: 'вул. Староболгарська (Школа)' },
    },
    {
      id: 7,
      time: '07:05',
      route: { id: 2, number: '1', name: 'Маршрут 1' },
      stop: { id: 4, name: '...' },
    },
    {
      id: 8,
      time: '07:18',
      route: { id: 2, number: '1', name: 'Маршрут 1' },
      stop: { id: 4, name: 'Завод "Океан"'},
    }
  ];
}

// import { Schedule, StrapiResponse } from '@/types/schedule.types';

// const API_URL = 'http://localhost:1337/api';

// export async function getSchedules(): Promise<Schedule[]> {
//   const res = await fetch(`${API_URL}/schedules?populate=route,stop`, {
//     cache: 'no-store',
//   });

//   const data: StrapiResponse<any> = await res.json();

//   return data.data.map((item: any) => ({
//     id: item.id,
//     time: item.attributes.time,
//     route: {
//       id: item.attributes.route.data.id,
//       number: item.attributes.route.data.attributes.number,
//       name: item.attributes.route.data.attributes.name,
//     },
//     stop: {
//       id: item.attributes.stop.data.id,
//       name: item.attributes.stop.data.attributes.name,
//     },
//   }));
//}