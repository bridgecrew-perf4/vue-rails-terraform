<template>
  <v-img
    :height="minHeight"
    :src="require('@/assets/article-6.jpg')"
    class="white--text"
    gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .8)"
  >
    <v-container class="fill-height px-4 py-12">
      <v-responsive
        class="d-flex align-center text-center"
        height="100%"
        width="100%"
      >
        <h2>本アプリを作ろうと思った経緯</h2>
        <br />
        <p>運動不足解消のため普段筋トレやエアロバイクに乗っています。</p>
        <p>
          運動の記録をメモアプリに保存していたのですが、メモの保存先がわからなくなったり、計算するのが面倒。
        </p>
        <p>
          そのような悩みを解消するためにログを取れたらいいなと思い、制作にあたりました。
        </p>
      </v-responsive>
    </v-container>
  </v-img>
</template>

<script lang="ts">
export default {
  computed: {
    minHeight() {
      const height = this.$vuetify.breakpoint.mdAndUp ? "100vh" : "50vh";
      return `calc(${height} - ${this.$vuetify.application.top}px)`;
    }
  }
};
</script>

<style scoped></style>
