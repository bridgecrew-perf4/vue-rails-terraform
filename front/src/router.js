import Vue from "vue";
import Router from "vue-router";
import App from "./App.vue";
import Coin from "./Coin.vue";
import Users from "./Users.vue";
import User from "./User.vue";
import UserCreate from "./UserCreate.vue";

Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "/",
      name: "home",
      component: App
    },
    {
      path: "/coin",
      name: "coin",
      component: Coin
    },
    {
      path: "/users",
      name: "users",
      component: Users
    },
    {
      path: "/users/:id",
      name: "user",
      component: User
    },
    {
      path: "/usercreate",
      name: "userCreate",
      component: UserCreate
    }
  ]
});
