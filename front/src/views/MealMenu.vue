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
      table: "mealMenu",
      title: "食品メニュー編集",
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
        { label: "タンパク質", model_value: "protein" },
        { label: "脂質", model_value: "lipid" }
      ]
    };
  },
  created() {
    let path = "";
    const url = "http://localhost:3000";
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    const id = this.$route.params["id"];
    path = "/users/" + uid + "/meal_menus/" + id;
    this.axios
      .get(url + path)
      .then(
        response => (
          (this.form.name = response.data.name),
          (this.form.calorie = response.data.calorie),
          (this.form.carbohydrate = response.data.carbohydrate),
          (this.form.protein = response.data.protein),
          (this.form.lipid = response.data.lipid)
        )
      );
  }
};
</script>
