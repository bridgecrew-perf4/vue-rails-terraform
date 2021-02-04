<template>
  <div>
    <Hero />
    <Feature />
    <DevEnv />
    <About />
    <SignUp />
  </div>
</template>

<script lang="ts">
import Hero from "../components/organisms/Hero.vue";
import Feature from "../components/organisms/Feature.vue";
import DevEnv from "../components/organisms/DevEnv.vue";
import About from "../components/organisms/About.vue";
import SignUp from "../components/organisms/SignUp.vue";

export default {
  components: {
    Hero,
    Feature,
    DevEnv,
    About,
    SignUp
  }
};
</script>

<style scoped></style>
