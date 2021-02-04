<template>
  <v-data-table :headers="headers" :items="records">
    <template v-slot:[`item.action`]="{ item }">
      <router-link :to="{ name: editPage, params: { id: item.id } }">
        <v-icon small class="mr-2">mdi-pencil</v-icon>
      </router-link>
      <v-icon small class="mr-2" @click="deleteRecord(item.id)"
        >mdi-delete</v-icon
      >
    </template>
  </v-data-table>
</template>

<script lang="ts">
export default {
  props: ["editPage", "headers", "records", "deleteRecord"]
};
</script>

<style scoped lang="scss">
a {
  text-decoration: none;
}
</style>
