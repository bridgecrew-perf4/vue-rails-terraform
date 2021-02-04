<template>
  <v-img
    :height="minHeight"
    :src="require('@/assets/article-1.jpg')"
    class="white--text"
    gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .8)"
  >
    <v-container class="fill-height px-4 py-12">
      <v-responsive
        class="d-flex align-center text-center"
        height="100%"
        width="100%"
      >
        <h2>{{ title }}</h2>
        <br />
        <p>Vue.jsとRuby on Rails(APIモード)でアプリを作成しました。</p>
        <p>
          開発を進めるに当たってスキーマ駆動開発でSwaggerでAPI定義をしてモックサーバーを立て、フロントエンドとバックエンドを切り分けて開発を進めました
        </p>
        <p>
          環境構築にはDockerを使用してPC環境に左右されることなくバージョン指定。
        </p>
        <p>CIはGithub Actions、CDはAWS CodeDeployを使用</p>
        <p>インフラ環境はAWSを使用しています。</p>
        <br />

        <router-link :to="{ name: tech }">
          <v-btn color="info" large>開発環境・使用ツール詳細へ</v-btn>
        </router-link>
        <span class="font-weight-bold ml-6 mr-4 my-4"></span>

        <a href="/" target="_blank">
          <v-btn right dark large>Githubへ</v-btn>
        </a>
      </v-responsive>
    </v-container>
  </v-img>
</template>

<script lang="ts">
export default {
  data: () => ({
    title: "開発環境"
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
