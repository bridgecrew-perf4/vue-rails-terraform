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
      table: "exerciseMenu",
      title: "運動メニュー",
      createPage: "exerciseMenuCreate",
      editPage: "exerciseMenu",
      headers: [
        { text: "ID", value: "id" },
        { text: "名前", value: "name" },
        { text: "カロリー", value: "calorie" },
        { text: "操作", value: "action", sortable: false }
      ],
      records: []
    };
  }
};
</script>
