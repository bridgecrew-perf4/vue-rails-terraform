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
      table: "mealMenu",
      title: "食品作成",
      listPage: "mealMenus",
      form: {
        name: "",
        calorie: "",
        carbohydrate: "",
        protein: "",
        lipid: ""
      },
      inputs: [
        { label: "名前", model_value: "name" },
        { label: "カロリー", model_value: "calorie" },
        { label: "炭水化物", model_value: "carbohydrate" },
        { label: "たんぱく質", model_value: "protein" },
        { label: "脂質", model_value: "lipid" }
      ]
    };
  }
};
</script>
