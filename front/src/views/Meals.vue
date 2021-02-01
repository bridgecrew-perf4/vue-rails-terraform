<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>食事ログ</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'mealCreate' }">
          <v-btn color="info">
            新規登録
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="meals">
          <template v-slot:[`item.action`]="{ item }">
            <router-link :to="{ name: 'meal', params: { id: item.id } }">
              <v-icon small class="mr-2">mdi-pencil</v-icon>
            </router-link>
            <v-icon small class="mr-2" @click="deleteMeal(item.id)"
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
    return {
      headers: [
        { text: "ID", value: "id" },
        { text: "日付", value: "eat_time" },
        { text: "名前", value: "meal_menu.name" },
        { text: "数量", value: "quantity" },
        { text: "カロリー", value: "meal_menu.calorie" },
        { text: "タンパク質", value: "meal_menu.protein" },
        { text: "食事時刻", value: "eat_time" },
        { text: "操作", value: "action", sortable: false }
      ],
      meals: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/meals")
      .then(response => (this.meals = response.data));
  },
  methods: {
    deleteMeal(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/meals/${id}`);
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
