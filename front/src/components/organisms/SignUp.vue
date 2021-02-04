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
        <h2>さっそく始めよう</h2>
        <br />
        <v-btn color="info" @click="login">Googleでログイン</v-btn>
      </v-responsive>
    </v-container>
  </v-img>
</template>

<script lang="ts">
import { mapActions } from "vuex";
export default {
  methods: {
    ...mapActions(["login"])
  },

  computed: {
    minHeight() {
      const height = this.$vuetify.breakpoint.mdAndUp ? "100vh" : "50vh";
      return `calc(${height} - ${this.$vuetify.application.top}px)`;
    }
  }
};
</script>

<style scoped></style>
