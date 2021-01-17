<template>
  <div>
    <h1>ユーザー一覧</h1>
    <table>
      <tr v-for="user in users" :key="user.id">
        <td>        
          <router-link :to="{ name: 'users', params: { userID: user.id }}">
            <p>{{ user.id }}</p>
          </router-link>
        </td>
        <td>{{ user.name }}</td>
        <td>{{ user.email }}</td>
        <td>{{ user.age }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        users: null
      };
    },
    mounted() {
      this.axios
        .get('http://localhost:3000/users')
        .then(response => (this.users = response.data))
    }
  }
</script>