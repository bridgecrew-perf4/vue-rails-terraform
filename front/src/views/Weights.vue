<template>
  <LogList
    :table="table"
    :title="title"
    :createPage="createPage"
    :editPage="editPage"
    :headers="headers"
    :records="records"
  />
</template>

<script lang="ts">
import LogList from "../components/organisms/LogList.vue";
export default {
  components: {
    LogList
  },
  data() {
    return {
      table: "weight",
      title: "体重ログ",
      createPage: "weightCreate",
      editPage: "weight",
      headers: [
        { text: "ID", value: "id" },
        { text: "日付", value: "measurement_time" },
        { text: "体重(kg)", value: "value" },
        { text: "体脂肪率(%)", value: "body_fat" },
        { text: "計測時刻", value: "measurement_time" },
        { text: "操作", value: "action", sortable: false }
      ],
      records: []
    };
  },
  created() {
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    this.axios
      .get(`http://localhost:3000/users/${uid}/weights`)
      .then(response => (this.records = response.data));
  }
};
</script>

<style scoped lang="scss">
a {
  text-decoration: none;
}
</style>
