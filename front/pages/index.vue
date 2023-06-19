<script setup lang="ts">
  import { User } from '@/types/User'
  import { createTestUser } from '~/utils/createUser'
  const msgs = ref<string[]>([])
  const name = ref<string>('World')
  const users = ref<User[]>([])

  const getHello = async (): Promise<void> => {
    const { data } = await useMyFetch('/api/v1/hello')
    const msg = data.value as string
    msgs.value.push(msg)
  }

  const getAllUser = async (): Promise<void> => {
    const { data } = await useMyFetch('/api/v1/users')
    const userArray = data.value as User[]
    users.value = userArray
  }

  const index = 0
  const user = createTestUser()
  const user2 = createTestUser()
  user2.avatar_url += `/${index + 1}.svg`
</script>

<template>
  <div>
    <div>
      <button id="hello" @click="getHello">HelloAPIを叩く</button>
      <ul>
        <li v-for="(msg, index) in msgs" :key="index">
          {{ msg }}
        </li>
      </ul>
    </div>
    <div>
      <input v-model="name" type="text" />
      <HelloWorld :name="name" />
    </div>
    <div>
      <p>こんにちは</p>
    </div>
    <div>
      <NuxtLink :to="'test/about'">about</NuxtLink>
    </div>
    <div>
      <button @click="getAllUser">getAllUser</button>
      {{ users }}
    </div>
    <img :src="user.avatar_url" />
    <img :src="user2.avatar_url" />
  </div>
</template>
