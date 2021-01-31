<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>食事登録</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field v-model="meal.meal_menu_id" label=""></v-text-field>
              <v-text-field v-model="meal.quantity" label="数量"></v-text-field>
              <v-text-field
                v-model="meal.meal_time"
                label="食事時間"
              ></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'meals' })"
                  >キャンセル</v-btn
                >
                <v-btn color="info" class="ml-2" @click="create">保存</v-btn>
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
      meal: []
    };
  },
  methods: {
    create() {
      const params = {
        meal_menu_id: this.meal.meal_menu_id,
        quantity: this.meal.quantity,
        meal_time: this.meal.meal_time
      };

      this.axios.post(`http://localhost:3000/meals`, params);
      alert("食事情報を更新しました");
      this.$router.push({ name: "meals" });
    }
  }
};
</script>
