<template>
  <v-sheet>
    <v-navigation-drawer v-model="$store.state.drawer" absolute temporary>
      <v-list-item>
        <v-list-item-avatar>
          <img v-if="photoURL" :src="photoURL" />
        </v-list-item-avatar>

        <v-list-item-content>
          <v-list-item-title>{{ userName }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>

      <v-divider></v-divider>

      <v-list dense>
        <v-list-item v-for="item in items" :key="item.title" link>
          <v-list-item-icon>
            <router-link :to="{ name: item.link }">
              <v-icon>{{ item.icon }}</v-icon>
            </router-link>
          </v-list-item-icon>

          <v-list-item-content>
            <router-link :to="{ name: item.link }">
              <v-list-item-title>
                {{ item.title }}
              </v-list-item-title>
            </router-link>
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
  </v-sheet>
</template>

<script lang="ts">
import { mapGetters } from "vuex";

export default {
  name: "SideNav",

  data() {
    return {
      drawer: null,
      items: [
        { title: "運動ログ", icon: "mdi-forum", link: "exercises" },
        { title: "食事ログ", icon: "mdi-forum", link: "meals" },
        { title: "体重ログ", icon: "mdi-forum", link: "weights" },
        {
          title: "運動メニューリスト",
          icon: "mdi-forum",
          link: "exerciseMenus"
        },
        { title: "食事メニューリスト", icon: "mdi-forum", link: "mealMenus" },
        { title: "ユーザー編集", icon: "mdi-forum", link: "user" }
      ]
    };
  },
  computed: {
    ...mapGetters(["userName", "photoURL"])
  }
};
</script>

<style lang="scss" scoped>
a {
  text-decoration: none;
}
</style>
