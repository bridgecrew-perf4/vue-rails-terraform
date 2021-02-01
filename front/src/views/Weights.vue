<template>
  <v-container text-xs-center justify-center>
    <v-layout row wrap>
      <v-flex xs12>
        <h1>体重ログ</h1>
      </v-flex>

      <v-flex xs12 mt-5 mr-5 text-right>
        <router-link :to="{ name: 'weightCreate' }">
          <v-btn color="info">
            新規登録
          </v-btn>
        </router-link>
      </v-flex>

      <v-flex xs12 mt-3 justify-center>
        <v-data-table :headers="headers" :items="weights">
          <template v-slot:[`item.action`]="{ item }">
            <router-link :to="{ name: 'weight', params: { id: item.id } }">
              <v-icon small class="mr-2">mdi-pencil</v-icon>
            </router-link>
            <v-icon small class="mr-2" @click="deleteWeight(item.id)"
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
        { text: "日付", value: "measurement_time" },
        { text: "体重(kg)", value: "value" },
        { text: "体脂肪率(%)", value: "body_fat" },
        { text: "計測時刻", value: "measurement_time" },
        { text: "操作", value: "action", sortable: false }
      ],
      weights: []
    };
  },
  mounted() {
    this.axios
      .get("http://localhost:3000/weights")
      .then(response => (this.weights = response.data));
  },
  methods: {
    deleteWeight(id) {
      if (confirm("削除してよろしいですか？")) {
        this.axios.delete(`http://localhost:3000/weights/${id}`);
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
