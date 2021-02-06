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
      table: "weight",
      title: "体重ログ",
      listPage: "weights",
      form: {
        value: "",
        body_fat: "",
        measurement_time: ""
      },
      inputs: [
        { label: "体重", model_value: "value" },
        { label: "体脂肪率", model_value: "body_fat" },
        { label: "計測時刻", model_value: "measurement_time" }
      ]
    };
  }
};
</script>
