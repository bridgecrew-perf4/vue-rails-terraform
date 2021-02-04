<template>
  <v-img
    :height="minHeight"
    :src="require('@/assets/home-hero.jpg')"
    class="white--text"
    gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .2)"
  >
    <v-container class="fill-height px-4 py-12">
      <v-responsive class="d-flex align-center" max-width="750">
        <div :class="[`text-h1`]">
          {{ title }}
        </div>
        <v-btn color="info" @click="login">{{ btn_name }}</v-btn>
      </v-responsive>
    </v-container>
  </v-img>
</template>

<script lang="ts">
import { mapActions } from "vuex";
export default {
  data() {
    return {
      title: "DIET AND TRAINING LOG APP",
      btn_name: "Googleでログイン"
    };
  },
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
