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
  },
  created() {
    let path = "";
    const url = "http://localhost:3000";
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    const id = this.$route.params["id"];
    path = "/users/" + uid + "/weights/" + id;
    this.axios
      .get(url + path)
      .then(
        response => (
          (this.form.value = response.data.value),
          (this.form.body_fat = response.data.body_fat),
          (this.form.measurement_time = response.data.measurement_time)
        )
      );
  }
};
</script>

<style scoped lang="scss"></style>
