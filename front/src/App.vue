<template>
  <v-app>
    <Header />
    <v-main>
      <SideNav />
      <router-view />
    </v-main>
    <Footer />
  </v-app>
</template>

<script lang="ts">
import firebase from "firebase/app";
import { mapActions, mapGetters } from "vuex";

import Header from "./components/organisms/Header.vue";
import SideNav from "./components/organisms/SideNav.vue";
import Footer from "./components/organisms/Footer.vue";
export default {
  name: "App",
  components: {
    Header,
    SideNav,
    Footer
  },
  beforeCreate() {
    firebase.auth().onAuthStateChanged(user => {
      if (user) {
        this.setLoginUser(user);
        if (this.$router.currentRoute.name === "home")
          this.$router.push({ name: "weights" });
      } else {
        this.deleteLoginUser();
        this.$router.push({ name: "home" });
      }
    });
  },
  created() {
    firebase.auth().onAuthStateChanged(user => {
      if (user) {
        this.setLoginUser(user);
        if (this.$router.currentRoute.name === "home")
          this.$router.push({ name: "weights" });
      } else {
        this.deleteLoginUser();
        this.$router.push({ name: "home" });
      }
    });
   
  },
  methods: {
    ...mapActions(["setLoginUser", "logout", "deleteLoginUser"])
  },
  computed: {
    ...mapGetters(["uid"])
  }
};
</script>

<style lang="scss" scoped>
a {
  text-decoration: none;
}
</style>
