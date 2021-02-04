import App from "./App.vue";
import axios from "axios";
import firebase from "firebase";
import router from "./router";
import store from "./store";
import Vue from "vue";
import VueAxios from "vue-axios";
import vuetify from "./plugins/vuetify";

Vue.config.productionTip = false;

Vue.use(VueAxios, axios);

const config = {
  apiKey: process.env.VUE_APP_API_KEY,
  authDomain: process.env.VUE_APP_AUTH_DOMAIN,
  projectId: process.env.VUE_APP_PROJECT_ID,
  storageBucket: process.env.VUE_APP_STORAGE_BUCKET,
  messagingSenderId: process.env.VUE_APP_MESSAGING_SENDER_ID,
  appId: process.env.VUE_APP_APP_ID
};
firebase.initializeApp(config);

new Vue({
  router,
  store,
  vuetify,
  render: h => h(App)
}).$mount("#app");
