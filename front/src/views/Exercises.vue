<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>運動ログ</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'exerciseCreate' }">
          <v-btn color="info">
            新規登録
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="exercises">
          <template v-slot:[`item.action`]="{ item }">
            <router-link :to="{ name: 'exercise', params: { id: item.id } }">
              <v-icon small class="mr-2">mdi-pencil</v-icon>
            </router-link>
            <v-icon small class="mr-2" @click="deleteExercise(item.id)"
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
        { text: "メニュー", value: "exercise_menu.name" },
        { text: "回数", value: "number" },
        { text: "セット数", value: "set" },
        { text: "時間", value: "time" },
        { text: "距離", value: "distance" },
        { text: "操作", value: "action", sortable: false }
      ],
      exercises: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/exercises")
      .then(response => (this.exercises = response.data));
  },
  methods: {
    deleteExercise(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/exercises/${id}`);
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
