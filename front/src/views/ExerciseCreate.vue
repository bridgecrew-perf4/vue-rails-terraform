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
      table: "exercise",
      title: "運動ログ作成",
      listPage: "exercises",
      form: {
        exercise_menu_id: "",
        exercise_time: "",
        number: "",
        set: "",
        time: ""
      },
      inputs: [
        { label: "名前", model_value: "exercise_menu_id" },
        { label: "時間", model_value: "exercise_time" },
        { label: "回数", model_value: "number" },
        { label: "セット", model_value: "set" },
        { label: "実施時間", model_value: "time" }
      ]
    };
  }
};
</script>
