import axios from "axios";

const apiClient = axios.create({
  baseURL: process.env.NEXT_PUBLIC_STRAPI_URL ?? "http://localhost:1337",
});

export default apiClient;
