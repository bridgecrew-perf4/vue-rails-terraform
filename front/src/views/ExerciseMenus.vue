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
  },
  created() {
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    this.axios
      .get(`http://localhost:3000/users/${uid}/exercise_menus`)
      .then(response => (this.records = response.data));
  }
};
</script>
