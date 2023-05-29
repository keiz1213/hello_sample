<script setup lang="ts">
  const msgs = ref<string[]>([])
  const name = ref<string>('World')
  const { githubLogin } = useAuth()

  const login = async () => {
    await githubLogin()
    navigateTo('/home', { replace: true })
    console.log('loginしました')
  }

  const getHello = async (): Promise<void> => {
    const { data } = await useMyFetch('/api/v1/hello')
    const msg = data.value as string
    msgs.value.push(msg)
  }
  console.log('---------------------------------')
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
      <button @click="login">Homeページへ</button>
    </div>
  </div>
</template>
