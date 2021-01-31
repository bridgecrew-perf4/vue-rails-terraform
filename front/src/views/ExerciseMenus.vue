<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>運動メニュー</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'exercise_menuCreate' }">
          <v-btn color="info">
            新規登録
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="exercise_menus">
          <template v-slot:[`item.action`]="{ item }">
            <router-link
              :to="{ name: 'exerciseMenu', params: { id: item.id } }"
            >
              <v-icon small class="mr-2">mdi-pencil</v-icon>
            </router-link>
            <v-icon small class="mr-2" @click="deleteExerciseMenu(item.id)"
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
        { text: "名前", value: "name" },
        { text: "カロリー", value: "calorie" },
        { text: "操作", value: "action", sortable: false }
      ],
      exercise_menus: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/exercise_menus")
      .then(response => (this.exercise_menus = response.data));
  },
  methods: {
    deleteExerciseMenu(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/exercise_menus/${id}`);
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
