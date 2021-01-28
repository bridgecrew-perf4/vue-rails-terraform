<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>ユーザー作成</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field v-model="user.name" label="名前"></v-text-field>
              <v-text-field
                v-model="user.email"
                label="メールアドレス"
              ></v-text-field>
              <v-text-field v-model="user.age" label="年齢"></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'users' })"
                  >キャンセル</v-btn
                >
                <v-btn color="info" class="ml-2" @click="create">作成</v-btn>
              </div>
            </v-form>
          </v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      user: []
    };
  },
  methods: {
    create() {
      const params = {
        name: this.user.name,
        email: this.user.email,
        age: this.user.age
      };
      this.axios.post(`http://localhost:3000/users`, params);
      alert("ユーザー情報を作成しました");
      this.$router.push({ name: "users" });
    }
  }
};
</script>
