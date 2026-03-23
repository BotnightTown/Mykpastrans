export function formatCurrentDate() {
  const now = new Date();
  const options: Intl.DateTimeFormatOptions = { weekday: 'long', day: '2-digit', month: 'long', year: 'numeric' };
  return now.toLocaleDateString('uk-UA', options); 
}

export function isWeekend(date: Date = new Date()) {
  const day = date.getDay(); 
  return day === 0 || day === 6;
}