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
      table: "user",
      title: "ユーザー作成",
      listPage: "users",
      form: {
        name: "",
        target_weight: "",
        target_body_fat: ""
      },
      inputs: [
        { label: "名前", model_value: "name" },
        { label: "目標体重", model_value: "target_weight" },
        { label: "目標体脂肪率(%)", model_value: "target_body_fat" }
      ]
    };
  }
};
</script>
