<template>
  <v-app>
    <v-app-bar app color="orange" dark>
      <v-toolbar-title>Sample app</v-toolbar-title>
      <v-spacer></v-spacer>
    </v-app-bar>

    <v-main>
      <v-container fluid fill-height align-start>
        <router-view />
      </v-container>
    </v-main>
  </v-app>
</template>

<script></script>
