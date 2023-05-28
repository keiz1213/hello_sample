// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: false,
  runtimeConfig: {
    public: {
      baseURL: process.env.API_URL,
      containerPort: process.env.CONTAINER_PORT
    }
  }
})
