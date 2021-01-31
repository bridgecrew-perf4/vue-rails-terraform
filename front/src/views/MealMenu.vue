<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>食事編集</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="meal_menu.name"
                label="メニュー"
                required
              ></v-text-field>
              <v-text-field
                v-model="meal_menu.calorie"
                label="カロリー"
                required
              ></v-text-field>
              <v-text-field
                v-model="meal_menu.carbohydrate"
                label="炭水化物"
                required
              ></v-text-field>
              <v-text-field
                v-model="meal_menu.protein"
                label="たんぱく質"
                required
              ></v-text-field>
              <v-text-field
                v-model="meal_menu.lipid"
                label="脂質"
                required
              ></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'mealMenus' })"
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
      meal_menu: []
    };
  },
  mounted() {
    this.axios
      .get(
        `http://localhost:3000/meal_menus/${this.$route.params["id"]}`,
        this.meal_menu[0]
      )
      .then(response => (this.meal_menu = response.data));
  },
  methods: {
    update() {
      const params = {
        name: this.meal_menu.name,
        calorie: this.meal_menu.calorie,
        carbohydrate: this.meal_menu.carbohydrate,
        protein: this.meal_menu.protein,
        lipid: this.meal_menu.lipid
      };
      if (this.$route.params.id) {
        this.axios.put(
          `http://localhost:3000/meal_menus/${this.$route.params["id"]}`,
          params
        );
        alert("食事情報を更新しました");
      } else {
        alert("通信が失敗しました");
      }
      this.$router.push({ name: "mealMenus" });
    }
  }
};
</script>
