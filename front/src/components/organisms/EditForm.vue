<template>
  <v-container text-xs-center>
    <v-container class="fill-height"> </v-container>
    <v-layout row wrap justify-center>
      <v-flex xs12 class="text-center">
        <h1>{{ title }}</h1>
      </v-flex>
      <v-flex xs5 mt-5>
        <v-card>
          <v-card-text>
            <EditForm
              :table="table"
              :form="form"
              :inputs="inputs"
              :listPage="listPage"
              :update="update"
            />
          </v-card-text>
        </v-card>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script lang="ts">
import EditForm from "../molecules/EditForm.vue";

export default {
  components: {
    EditForm
  },
  props: ["table", "title", "listPage", "form", "inputs", "params", "update"]
};
</script>
