import { User } from '@/types/User'

export function createTestUser(): User {
  const testUser = {
    id: 0,
    uid: '',
    name: '',
    avatar_url: new URL(`../assets/images`, import.meta.url).href,
    games: null,
    token: 'test'
  }
  return testUser
}
