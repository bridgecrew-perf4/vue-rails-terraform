<template>
  <Form
    :table="table"
    :title="title"
    :listPage="listPage"
    :form="form"
    :inputs="inputs"
  />
</template>

<script lang="ts">
import Form from "../components/organisms/Form.vue";
export default {
  components: {
    Form
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
