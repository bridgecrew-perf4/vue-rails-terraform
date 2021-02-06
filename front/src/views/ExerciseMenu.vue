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
      table: "exerciseMenu",
      title: "運動メニュー編集",
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
  },
  created() {
    let path = "";
    const url = "http://localhost:3000";
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    const id = this.$route.params["id"];
    path = "/users/" + uid + "/exercise_menus/" + id;
    this.axios
      .get(url + path)
      .then(
        response => (
          (this.form.name = response.data.name),
          (this.form.calorie = response.data.calorie)
        )
      );
  }
};
</script>
