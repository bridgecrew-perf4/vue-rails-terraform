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
      table: "exercise",
      title: "運動ログ",
      createPage: "exerciseCreate",
      editPage: "exercise",
      headers: [
        { text: "ID", value: "id" },
        { text: "日付", value: "exercise_time" },
        { text: "メニュー", value: "exercise_menu.name" },
        { text: "回数", value: "number" },
        { text: "セット数", value: "set" },
        { text: "時間", value: "time" },
        { text: "距離", value: "distance" },
        { text: "実施時間", value: "exercise_time" },
        { text: "操作", value: "action", sortable: false }
      ],
      records: []
    };
  }
};
</script>

<style scoped lang="scss">
a {
  text-decoration: none;
}
</style>
