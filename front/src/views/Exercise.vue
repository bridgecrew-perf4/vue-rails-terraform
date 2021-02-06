<template>
  <EditForm
    :table="table"
    :title="title"
    :listPage="listPage"
    :form="form"
    :inputs="inputs"
  />
</template>

<script lang="ts">
import EditForm from "../components/organisms/EditForm.vue";
export default {
  components: {
    EditForm
  },
  data() {
    return {
      table: "exercise",
      title: "運動ログ編集",
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
        { label: "距離", model_value: "distance" },
        { label: "実施時間", model_value: "time" }
      ]
    };
  },
  created() {
    let path = "";
    const url = "http://localhost:3000";
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    const id = this.$route.params["id"];
    path = "/users/" + uid + "/exercises/" + id;
    this.axios
      .get(url + path)
      .then(
        response => (
          (this.form.exercise_menu_id = response.data.exercise_menu_id),
          (this.form.exercise_time = response.data.exercise_time),
          (this.form.number = response.data.number),
          (this.form.set = response.data.set),
          (this.form.distance = response.data.distance),
          (this.form.time = response.data.time)
        )
      );
  }
};
</script>
