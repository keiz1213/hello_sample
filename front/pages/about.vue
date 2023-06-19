<script setup lang="ts">
  import { createTestUser } from '~/utils/createUser'

  const index = 0
  const user = createTestUser()
  const user2 = createTestUser()
  user2.avatar_url += `/${index + 1}.svg`
</script>

<template>
  <div>
    <img :src="user.avatar_url" />
    <img :src="user2.avatar_url" />
  </div>
</template>
