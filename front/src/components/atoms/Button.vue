<template>
  <v-btn color="info">
    {{ text }}
  </v-btn>
</template>

<script lang="ts">
export default {
  props: ["text"]
};
</script>

<style lang="scss" scoped>
a {
  text-decoration: none;
}
</style>
