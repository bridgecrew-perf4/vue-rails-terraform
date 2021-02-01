<template>
  <v-container text-xs-center>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>運動ログ編集</h1>
      </v-flex>

      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <v-form>
              <v-text-field
                v-model="exercise.exercise_menu_id"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise.number"
                label="回数"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise.set"
                label="セット数"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise.time"
                label="時間"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise.distance"
                label="距離"
                required
              ></v-text-field>
              <v-text-field
                v-model="exercise.exercise_time"
                label="実施時間"
                required
              ></v-text-field>
              <div class="text-center">
                <v-btn @click="$router.push({ name: 'exercises' })"
                  >キャンセル</v-btn
                >
                <v-btn color="info" class="ml-2" @click="update">保存</v-btn>
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
      exercise: []
    };
  },
  mounted() {
    this.axios
      .get(
        `http://localhost:3000/exercises/${this.$route.params["id"]}`,
        this.exercise[0]
      )
      .then(response => (this.exercise = response.data));
  },
  methods: {
    update() {
      const params = {
        exercise_menu_id: this.exercise.exercise_menu_id,
        number: this.exercise.number,
        set: this.exercise.set,
        time: this.exercise.time,
        distance: this.exercise.distance,
        exercise_time: this.exercise.exercise_time
      };
      if (this.$route.params.id) {
        this.axios.put(
          `http://localhost:3000/exercises/${this.$route.params["id"]}`,
          params
        );
        alert("ユーザー情報を更新しました");
      } else {
        alert("通信が失敗しました");
      }
      this.$router.push({ name: "exercises" });
    }
  }
};
</script>
