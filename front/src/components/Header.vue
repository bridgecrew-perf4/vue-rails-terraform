<template>
  <v-app-bar app color="primary" dark>
    <v-app-bar-nav-icon></v-app-bar-nav-icon>
    <div class="d-flex align-center">
      DIET AND TRAINING LOG APP
    </div>
    <v-spacer></v-spacer>
    <v-toolbar-items v-if="$store.state.login_user">
      <v-btn text @click="logout">ログアウト</v-btn>
    </v-toolbar-items>
  </v-app-bar>
</template>

<script>
export default {
  name: "App",
  components: {},
  data: () => ({
    //
  })
};
</script>
