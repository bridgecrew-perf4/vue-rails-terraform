import Vue from "vue";
import Router from "vue-router";
import Coin from "../views/Coin.vue";
import Home from "../views/Home.vue";
import Users from "../views/Users.vue";
import User from "../views/User.vue";
import UserCreate from "../views/UserCreate.vue";

Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
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
