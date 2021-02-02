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
        <Table :editPage="editPage" :headers="headers" :records="records" />
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
      btn_name: "新規登録"
    };
  },
  methods: {
    deleteRecord(id) {
      if (confirm("削除してよろしいですか？")) {
        const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
        if (this.table == "weight") {
          this.axios.delete(`http://localhost:3000/users/${uid}/weights/${id}`);
        } else if (this.table == "meal") {
          this.axios.delete(`http://localhost:3000/users/${uid}/meals/${id}`);
        }
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
