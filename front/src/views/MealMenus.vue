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
      table: "mealMenu",
      title: "食品リスト",
      createPage: "mealMenuCreate",
      editPage: "mealMenu",
      headers: [
        { text: "ID", value: "id" },
        { text: "メニュー", value: "name" },
        { text: "カロリー", value: "calorie" },
        { text: "炭水化物", value: "carbohydrate" },
        { text: "タンパク質", value: "protein" },
        { text: "脂質", value: "lipid" },
        { text: "操作", value: "action", sortable: false }
      ],
      records: []
    };
  }
};
</script>
