<script setup lang="ts">
  import { createTestUser } from '~/utils/createUser'

  const index = 0
  const user = createTestUser()
  const user2 = createTestUser()
  const user3 = createTestUser()
  const user4 = createTestUser()
  user2.avatar_url += `/${index + 1}.svg`
  user3.avatar_url = new URL(
    `../assets/images/${index + 1}.svg`,
    import.meta.url
  ).href
  user4.avatar_url = new URL(
    `@/assets/images/${index + 1}.svg`,
    import.meta.url
  ).href
</script>

<template>
  <div>
    <img :src="user.avatar_url" alt="user" />
    <img :src="user2.avatar_url" alt="user2" />
    <img :src="user3.avatar_url" alt="user3" />
    <img :src="user4.avatar_url" alt="user4" />
  </div>
</template>
