<template>
  <v-app-bar app color="primary" dark>
    <v-app-bar-nav-icon
      v-show="$store.state.login_user"
      @click.stop="toggleSideMenu"
    ></v-app-bar-nav-icon>
    <div class="d-flex align-center">
      DIET AND TRAINING LOG APP
    </div>
    <v-spacer></v-spacer>
    <v-toolbar-items v-if="$store.state.login_user">
      <v-btn text @click="logout">ログアウト</v-btn>
    </v-toolbar-items>
  </v-app-bar>
</template>

<script lang="ts">
import { mapActions, mapGetters } from "vuex";

export default {
  name: "Header",
  data() {
    return {
      drawer: null
    };
  },
  methods: {
    ...mapActions([
      "toggleSideMenu",
      "setLoginUser",
      "logout",
      "deleteLoginUser"
    ])
  },
  computed: {
    ...mapGetters(["userName", "photoURL", "uid"])
  }
};
</script>

<style lang="scss" scoped>
a {
  text-decoration: none;
}
</style>
