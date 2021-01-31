<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>食品作成</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="meal_menu.name"
                label="名前"
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
      meal_menu: []
    };
  },
  methods: {
    create() {
      const params = {
        name: this.meal_menu.name,
        calorie: this.meal_menu.calorie,
        carbohydrate: this.meal_menu.carbohydrate,
        protein: this.meal_menu.protein,
        lipid: this.meal_menu.lipid
      };
      this.axios.post(`http://localhost:3000/meal_menus`, params);
      alert("食品情報を作成しました");
      this.$router.push({ name: "mealMenus" });
    }
  }
};
</script>
