<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>ユーザー編集</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="user.target_weight"
                label="目標体重"
                required
              ></v-text-field>
              <v-text-field
                v-model="user.target_body_fat"
                label="目標体脂肪率(%)"
                required
              ></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'users' })"
                  >キャンセル</v-btn
                >
                <v-btn color="info" class="ml-2" @click="update">保存</v-btn>
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
  mounted() {
    this.axios
      .get(
        `http://localhost:3000/users/${this.$route.params["id"]}`,
        this.user[0]
      )
      .then(response => (this.user = response.data));
  },
  methods: {
    update() {
      const params = {
        name: this.user.name,
        email: this.user.email,
        age: this.user.age
      };
      if (this.$route.params.id) {
        this.axios.put(
          `http://localhost:3000/users/${this.$route.params["id"]}`,
          params
        );
        alert("ユーザー情報を更新しました");
      } else {
        alert("通信が失敗しました");
      }
      this.$router.push({ name: "users" });
    }
  }
};
</script>
