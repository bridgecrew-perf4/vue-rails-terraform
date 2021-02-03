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
      table: "meal",
      title: "食事ログ",
      createPage: "mealCreate",
      editPage: "meal",
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
      records: []
    };
  }
};
</script>
