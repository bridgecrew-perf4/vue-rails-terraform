<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>体重登録</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="weight.value"
                label="体重"
                required
              ></v-text-field>
              <v-text-field
                v-model="weight.body_fat"
                label="体脂肪率"
                required
              ></v-text-field>
              <v-text-field
                v-model="weight.measurement_time"
                label="計測時刻"
                required
              ></v-text-field>

              <div class="text-center">
                <v-btn @click="$router.push({ name: 'weights' })"
                  >キャンセル</v-btn
                >
                <v-btn color="info" class="ml-2" @click="create">保存</v-btn>
              </div>
            </v-form>
          </v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      weight: []
    };
  },
  methods: {
    create() {
      const params = {
        value: this.weight.value,
        measurement_time: this.weight.measurement_time,
        age: this.weight.age
      };
      this.axios.post(`http://localhost:3000/weights`, params);
      alert("体重情報を更新しました");
      this.$router.push({ name: "weights" });
    }
  }
};
</script>
