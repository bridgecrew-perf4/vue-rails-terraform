<template>
  <v-container text-xs-center justify-center>
    <v-container class="fill-height"> </v-container>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>{{ title }}</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: createPage }">
          <Button :text="btn_name" />
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <Table
          :editPage="editPage"
          :headers="headers"
          :records="records"
          :deleteRecord="deleteRecord"
        />
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script lang="ts">
import Button from "../atoms/Button.vue";
import Table from "../atoms/Table.vue";
export default {
  components: {
    Button,
    Table
  },
  props: ["table", "title", "createPage", "editPage", "headers", "records"],

  data() {
    return {
      btn_name: "新規登録",
      uid: "fyx2WUXkwQNk0KD8rryV3bKH4F53",
      url: "http://localhost:3000"
    };
  },
  created() {
    let path = "";
    switch (this.table) {
      case "exercise":
        path = "/users/" + this.uid + "/exercises";
        break;
      case "exerciseMenu":
        path = "/users/" + this.uid + "/exercise_menus";
        break;
      case "meal":
        path = "/users/" + this.uid + "/meals";
        break;
      case "mealMenu":
        path = "/users/" + this.uid + "/meal_menus";
        break;
      case "weight":
        path = "/users/" + this.uid + "/weights";
        break;
      default:
        alert(this.table);
        alert("レコードを取得できませんでした。");
    }
    this.axios
      .get(this.url + path)
      .then(response => (this.records = response.data));
  },
  methods: {
    deleteRecord(id) {
      if (confirm("削除してよろしいですか？")) {
        let path = "";
        switch (this.table) {
          case "exercise":
            path = "/users/" + this.uid + "/exercises/" + id;
            break;
          case "exerciseMenu":
            path = "/users/" + this.uid + "/exercise_menus/" + id;
            break;
          case "meal":
            path = "/users/" + this.uid + "/meals/" + id;
            break;
          case "mealMenu":
            path = "/users/" + this.uid + "/meal_menus/" + id;
            break;
          case "weight":
            path = "/users/" + this.uid + "/weights/" + id;
            break;
          default:
            alert(this.table);
            alert("レコードを削除できませんでした。");
        }
        this.axios.delete(this.url + path);
        location.reload();
      }
    }
  }
};
</script>

<style lang="scss" scoped>
a {
  text-decoration: none;
}
</style>
