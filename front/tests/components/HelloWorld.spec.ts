import { describe, test, expect } from 'vitest'
import { mount } from '@vue/test-utils'
import HelloWorld from '../../components/HelloWorld.vue'

describe('HelloWorld', () => {
  test('メッセージが表示される', () => {
    const wrapper = mount(HelloWorld, {
      props: {
        name: 'vitest'
      }
    })
    expect(wrapper.text()).toContain('Hello vitest!')
  })
})
