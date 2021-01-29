<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>ユーザー一覧</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'userCreate' }">
          <v-btn color="info">
            ユーザー追加
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="users">
          <template v-slot:[`item.action`]="{ item }">
            <router-link :to="{ name: 'user', params: { id: item.id } }">
              <v-icon small class="mr-2">mdi-pencil</v-icon>
            </router-link>
            <v-icon small class="mr-2" @click="deleteUser(item.id)"
              >mdi-delete</v-icon
            >
          </template>
        </v-data-table>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script lang="ts">
export default {
  data() {
    const baseURL = "";
    if (process.env.VUE_APP_USER_MOCK) {
      this.baseURL = "test";
    } else {
      this.baseURL = "test";
    }
    return {
      headers: [
        { text: "ID", value: "id" },
        { text: "名前", value: "name" },
        { text: "メールアドレス", value: "email" },
        { text: "年齢", value: "age" },
        { text: "操作", value: "action", sortable: false }
      ],
      users: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/users")
      .then(response => (this.users = response.data));
  },
  methods: {
    deleteUser(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/users/${id}`);
        location.reload(); // storeに置き換える
      }
    }
  }
};
</script>

<style scoped lang="scss">
a {
  text-decoration: none;
}
</style>
