'use client';

import dynamic from 'next/dynamic';

const Map = dynamic(() => import('@/components/Map'), {
  ssr: false,
  loading: () => <p>Завантаження карти...</p>,
});

export default function MapWrapper() {
  return <Map />;
}
