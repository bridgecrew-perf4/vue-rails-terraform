<template>
  <v-app-bar app color="primary" dark>
    <v-app-bar-nav-icon
      v-show="$store.state.login_user"
      @click.stop="toggleSideMenu"
    ></v-app-bar-nav-icon>
    <div class="d-flex align-center">
      {{ title }}
    </div>
    <v-spacer></v-spacer>
    <v-toolbar-items v-if="$store.state.login_user">
      <v-btn text @click="logout">ログアウト</v-btn>
    </v-toolbar-items>
  </v-app-bar>
</template>

<script lang="ts">
import { mapActions } from "vuex";

export default {
  name: "Header",
  data() {
    return {
      title: "DIET AND TRAINING LOG APP",
      btn_name: "ログアウト",
      drawer: null
    };
  },
  methods: {
    ...mapActions(["toggleSideMenu", "logout"])
  }
};
</script>

<style lang="scss" scoped></style>
