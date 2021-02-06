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
      table: "meal",
      title: "食事ログ編集",
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
  },
  created() {
    let path = "";
    const url = "http://localhost:3000";
    const uid = "fyx2WUXkwQNk0KD8rryV3bKH4F53";
    const id = this.$route.params["id"];
    path = "/users/" + uid + "/meals/" + id;
    this.axios
      .get(url + path)
      .then(
        response => (
          (this.form.meal_menu_id = response.data.meal_menu_id),
          (this.form.eat_time = response.data.eat_time),
          (this.form.quantity = response.data.quantity)
        )
      );
  }
};
</script>

<style scoped lang="scss"></style>
