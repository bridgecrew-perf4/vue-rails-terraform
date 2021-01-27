<template>
  <div>
    <h1>{{ user.name }}</h1>
    <table>
      <td>{{ user.id }}</td>
      <td>{{ user.name }}</td>
      <td>{{ user.email }}</td>
      <td>{{ user.age }}</td>
    </table>
  </div>
</template>

<script>
export default {
  data() {
    return {
      user: null
    };
  },
  mounted() {
    this.axios
      .get(`http://localhost:3000/users/${this.$route.params["id"]}`)
      .then(response => (this.user = response.data));
  }
};
</script>
