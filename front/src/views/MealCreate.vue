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
import CreateForm from "../components/organisms/Form.vue";
export default {
  components: {
    CreateForm
  },

  data() {
    return {
      table: "meal",
      title: "食事ログ作成",
      listPage: "meals",
      form: {
        meal_menu_id: "",
        eat_time: "",
        quantity: ""
      },
      inputs: [
        { label: "名前", model_value: "meal_menu_id" },
        { label: "食事時刻", model_value: "eat_time" },
        { label: "数量", model_value: "quantity" }
      ]
    };
  }
};
</script>
