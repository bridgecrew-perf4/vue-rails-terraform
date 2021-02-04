<template>
  <v-form>
    <v-text-field
      v-for="input in inputs"
      :key="input.label"
      v-model="form[input.model_value]"
      :label="input.label"
    ></v-text-field>
    <div class="text-center">
      <v-btn @click="$router.push({ name: listPage })">キャンセル</v-btn>
      <v-btn color="info" class="ml-2" @click="create">保存</v-btn>
    </div>
  </v-form>
</template>

<script lang="ts">
export default {
  props: ["table", "form", "inputs", "listPage"],
  data() {
    return {
      uid: "fyx2WUXkwQNk0KD8rryV3bKH4F53",
      url: "http://localhost:3000"
    };
  },
  // moleculesに書くべきではないのでorganismsに移動するかStoreに書く。もしくは子から親にデータ送るように修正する
  methods: {
    create() {
      let path = "";
      let params = null;
      switch (this.table) {
        case "exercise":
          path = "/users/" + this.uid + "/exercises";
          params = {
            name: this.form.name,
            exercise_menu_id: this.form.exercise_menu_id,
            exercise_time: this.form.exercise_time,
            number: this.form.number,
            set: this.form.set,
            time: this.form.time
          };
          break;
        case "exerciseMenu":
          path = "/users/" + this.uid + "/exercise_menus";
          params = {
            name: this.form.name,
            calorie: this.form.calorie,
            action: this.form.action
          };
          break;
        case "meal":
          path = "/users/" + this.uid + "/meals";
          params = {
            meal_menu_id: this.form.meal_menu_id,
            eat_time: this.form.eat_time,
            quantity: this.form.quantity
          };
          break;
        case "mealMenu":
          path = "/users/" + this.uid + "/meal_menus";
          params = {
            name: this.form.name,
            calorie: this.form.calorie,
            carbohydrate: this.form.carbohydrate,
            protein: this.form.protein,
            lipid: this.form.lipid
          };
          break;
        case "weight":
          path = "/users/" + this.uid + "/weights";
          params = {
            value: this.form.value,
            body_fat: this.form.body_fat,
            measurement_time: this.form.measurement_time
          };
          break;
        case "user":
          path = "/users/";
          params = {
            name: this.form.name,
            target_weight: this.form.target_weight,
            target_body_fat: this.form.target_body_fat
          };
          break;
        default:
          alert("登録できませんでした。");
      }

      this.axios.post(this.url + path, params);
      this.$router.push({ name: this.listPage });
    }
  }
};
</script>
