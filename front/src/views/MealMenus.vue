<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>食品リスト</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'mealMenuCreate' }">
          <v-btn color="info">
            新規登録
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="mealMenus">
          <template v-slot:[`item.action`]="{ item }">
            <router-link :to="{ name: 'mealMenu', params: { id: item.id } }">
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
    return {
      headers: [
        { text: "ID", value: "id" },
        { text: "メニュー", value: "name" },
        { text: "カロリー", value: "calorie" },
        { text: "炭水化物", value: "carbohydrate" },
        { text: "タンパク質", value: "protein" },
        { text: "脂質", value: "lipid" },
        { text: "操作", value: "action", sortable: false }
      ],
      mealMenus: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/meal_menus")
      .then(response => (this.mealMenus = response.data));
  },
  methods: {
    deleteUser(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/meal_menus/${id}`);
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
