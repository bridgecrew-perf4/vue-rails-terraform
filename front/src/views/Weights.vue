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
  }
};
</script>

<style scoped lang="scss"></style>
