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
