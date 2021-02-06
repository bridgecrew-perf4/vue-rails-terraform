<template>
  <CreateForm
    :table="table"
    :title="title"
    :listPage="listPage"
    :form="form"
    :inputs="inputs"
  />
</template>

<script lang="ts">
import CreateForm from "../components/organisms/CreateForm.vue";
export default {
  components: {
    CreateForm
  },

  data() {
    return {
      table: "exerciseMenu",
      title: "運動メニュー作成",
      listPage: "exerciseMenus",
      form: {
        name: "",
        calorie: ""
      },
      inputs: [
        { label: "名前", model_value: "name" },
        { label: "カロリー", model_value: "calorie" }
      ]
    };
  }
};
</script>
