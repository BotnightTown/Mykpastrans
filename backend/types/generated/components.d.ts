import type { Schema, Struct } from '@strapi/strapi';

export interface ScheduleBusDirection extends Struct.ComponentSchema {
  collectionName: 'components_schedule_bus_directions';
  info: {
    displayName: 'bus.direction';
  };
  attributes: {
    endpoint_name: Schema.Attribute.String;
    isWeekend: Schema.Attribute.Boolean & Schema.Attribute.DefaultTo<false>;
    trips: Schema.Attribute.Component<'schedule.bus-trip', true>;
  };
}

export interface ScheduleBusTrip extends Struct.ComponentSchema {
  collectionName: 'components_schedule_bus_trips';
  info: {
    displayName: 'bus.trip';
  };
  attributes: {
    is_short: Schema.Attribute.Boolean & Schema.Attribute.DefaultTo<false>;
    note: Schema.Attribute.String;
    time: Schema.Attribute.String;
  };
}

declare module '@strapi/strapi' {
  export module Public {
    export interface ComponentSchemas {
      'schedule.bus-direction': ScheduleBusDirection;
      'schedule.bus-trip': ScheduleBusTrip;
    }
  }
}
