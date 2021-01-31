import Vue from "vue";
import Router from "vue-router";
import Coin from "../views/Coin.vue";

import Exercises from "../views/Exercises.vue";
import Exercise from "../views/Exercise.vue";
import ExerciseCreate from "../views/ExerciseCreate.vue";

import ExerciseMenus from "../views/ExerciseMenus.vue";
import ExerciseMenu from "../views/ExerciseMenu.vue";
import ExerciseMenuCreate from "../views/ExerciseMenuCreate.vue";

import Home from "../views/Home.vue";

import Meals from "../views/Meals.vue";
import Meal from "../views/Meal.vue";
import MealCreate from "../views/MealCreate.vue";

import MealMenus from "../views/MealMenus.vue";
import MealMenu from "../views/MealMenu.vue";
import MealMenuCreate from "../views/MealMenuCreate.vue";

import Users from "../views/Users.vue";
import User from "../views/User.vue";
import UserCreate from "../views/UserCreate.vue";

import Weights from "../views/Weights.vue";
import Weight from "../views/Weight.vue";
import WeightCreate from "../views/WeightCreate.vue";

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

    // Exercise
    {
      path: "/exercises",
      name: "exercises",
      component: Exercises
    },
    {
      path: "/exercises/:id",
      name: "exercise",
      component: Exercise
    },
    {
      path: "/exercise_create",
      name: "exerciseCreate",
      component: ExerciseCreate
    },

    // ExerciseMenus
    {
      path: "/exercise_menus",
      name: "exerciseMenus",
      component: ExerciseMenus
    },
    {
      path: "/exercises/:id",
      name: "exerciseMenu",
      component: ExerciseMenu
    },
    {
      path: "/exercise_create",
      name: "exerciseMenuCreate",
      component: ExerciseMenuCreate
    },

    // Meal
    {
      path: "/meals",
      name: "meals",
      component: Meals
    },
    {
      path: "/meal",
      name: "meal",
      component: Meal
    },
    {
      path: "/meal_create",
      name: "mealCreate",
      component: MealCreate
    },

    // MealMenus
    {
      path: "/meal_menus",
      name: "mealMenus",
      component: MealMenus
    },
    {
      path: "/meal_menu",
      name: "mealMenu",
      component: MealMenu
    },
    {
      path: "/meal_menu_create",
      name: "mealMenuCreate",
      component: MealMenuCreate
    },

    // User
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
    },

    // Weight
    {
      path: "/weights",
      name: "weights",
      component: Weights
    },
    {
      path: "/weights/:id",
      name: "weight",
      component: Weight
    },
    {
      path: "/weightcreate",
      name: "weightCreate",
      component: WeightCreate
    }
  ]
});
