<template>
  <v-img
    :height="minHeight"
    :src="require('@/assets/article-2.jpg')"
    class="white--text"
    gradient="to right, rgba(5, 11, 31, .7), rgba(5, 11, 31, .7)"
  >
    <v-container class="fill-height px-4 py-12">
      <v-responsive
        class="d-flex align-center text-center"
        height="100%"
        width="100%"
      >
        <h2>{{ title }}</h2>
        <br />

        <v-row>
          <v-col
            v-for="feature in features"
            :key="feature.name"
            cols="12"
            sm="6"
            md="6"
          >
            <v-icon large>{{ feature.icon }}</v-icon>
            <br />
            <br />
            <h3>{{ feature.name }}</h3>
            <p>{{ feature.description }}</p>
          </v-col>
        </v-row>
      </v-responsive>
    </v-container>
  </v-img>
</template>

<script lang="ts">
export default {
  data: () => ({
    title:
      "DIET AND TRAINING LOG APPは食事や筋トレのログを登録することができるアプリです。",
    features: [
      {
        icon: "mdi-pencil",
        name: "運動メニューの登録",
        description:
          "腕立て伏せや腹筋、懸垂などの名称や時間毎のカロリー消費を登録できます。"
      },
      {
        icon: "mdi-pencil",
        name: "運動ログの登録",
        description:
          "登録した運動メニューを元に回数や時間を登録できます。日・週・月毎に実施回数を確認できます。"
      },
      {
        icon: "mdi-pencil",
        name: "食品・料理の登録",
        description:
          "食品や料理の名称とカロリーやタンパク質、脂質などの登録ができます。"
      },
      {
        icon: "mdi-pencil",
        name: "食事ログ",
        description:
          "登録された食材・メニューを元に食事記録の登録ができます。日・週・月毎に摂取カロリーやたんぱく質を確認できます。"
      }
    ]
  }),
  computed: {
    minHeight() {
      const height = this.$vuetify.breakpoint.mdAndUp ? "100vh" : "50vh";
      return `calc(${height} - ${this.$vuetify.application.top}px)`;
    }
  }
};
</script>

<style scoped></style>
