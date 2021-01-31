<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>運動メニュー編集</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="exercise_menu.name"
                label="メニュー"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise_menu.calorie"
                label="カロリー"
                required
              ></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'exerciseMenus' })"
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
      exercise_menu: []
    };
  },
  mounted() {
    this.axios
      .get(
        `http://localhost:3000/exercise_menus/${this.$route.params["id"]}`,
        this.exercise_menu[0]
      )
      .then(response => (this.exercise_menu = response.data));
  },
  methods: {
    update() {
      const params = {
        name: this.exercise_menu.name,
        calorie: this.exercise_menu.calorie
      };
      if (this.$route.params.id) {
        this.axios.put(
          `http://localhost:3000/exercise_menus/${this.$route.params["id"]}`,
          params
        );
        alert("運動メニュー情報を更新しました");
      } else {
        alert("通信が失敗しました");
      }
      this.$router.push({ name: "exerciseMenus" });
    }
  }
};
</script>
