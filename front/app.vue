<script setup lang="ts">
  const msgs = ref<string[]>([])
  const name = ref<string>('World')

  const getHello = async (): Promise<void> => {
    const { data } = await useMyFetch('/api/v1/hello')
    const msg = data.value as string
    msgs.value.push(msg)
  }
</script>

<template>
  <div>
    <div>
      <button id="hello" @click="getHello">RailsからAPIを取得する</button>
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
  </div>
</template>
