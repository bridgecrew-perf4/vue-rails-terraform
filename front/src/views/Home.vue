<template>
  <div>
    <v-img
      :height="minHeight"
      :src="require('@/assets/home-hero.jpg')"
      class="white--text"
      gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .2)"
    >
      <v-container class="fill-height px-4 py-12">
        <v-responsive class="d-flex align-center" max-width="750">
          <div :class="[`text-h1`]">
            DIET AND TRAINING LOG APP
          </div>
          <v-btn color="info" @click="login">Googleでログイン</v-btn>
        </v-responsive>
      </v-container>
    </v-img>

    <!-- アプリについて -->
    <v-img
      :height="minHeight"
      :src="require('@/assets/article-2.jpg')"
      class="white--text"
      gradient="to right, rgba(5, 11, 31, .7), rgba(5, 11, 31, .7)"
    >
      <v-container class="fill-height px-4 py-12">
        <v-responsive
          class="d-flex align-center text-center"
          height="100%"
          width="100%"
        >
          <h2>
            DIET AND TRAINING LOG
            APPは食事や筋トレのログを登録することができるアプリです。
          </h2>
          <br />

          <v-row>
            <v-col
              v-for="feature in features"
              :key="feature.name"
              cols="12"
              sm="6"
              md="6"
            >
              <v-icon large>{{ feature.icon }}</v-icon>
              <br />
              <br />
              <h3>{{ feature.name }}</h3>
              <p>{{ feature.description }}</p>
            </v-col>
          </v-row>
        </v-responsive>
      </v-container>
    </v-img>

    <!-- 使用技術 -->
    <v-img
      :height="minHeight"
      :src="require('@/assets/article-1.jpg')"
      class="white--text"
      gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .8)"
    >
      <v-container class="fill-height px-4 py-12">
        <v-responsive
          class="d-flex align-center text-center"
          height="100%"
          width="100%"
        >
          <h2>開発環境</h2>
          <br />
          <p>Vue.jsとRuby on Rails(APIモード)でアプリを作成しました。</p>
          <p>
            開発を進めるに当たってスキーマ駆動開発でSwaggerでAPI定義をしてモックサーバーを立て、フロントエンドとバックエンドを切り分けて開発を進めました
          </p>
          <p>
            環境構築にはDockerを使用してPC環境に左右されることなくバージョン指定。
          </p>
          <p>CIはGithub Actions、CDはAWS CodeDeployを使用</p>
          <p>インフラ環境はAWSを使用しています。</p>
          <br />

          <router-link :to="{ name: tech }">
            <v-btn color="info" large>開発環境・使用ツール詳細へ</v-btn>
          </router-link>
          <span class="font-weight-bold ml-6 mr-4 my-4"></span>

          <a href="/" target="_blank">
            <v-btn right dark large>Githubへ</v-btn>
          </a>
        </v-responsive>
      </v-container>
    </v-img>

    <!-- 使用技術 -->
    <v-img
      :height="minHeight"
      :src="require('@/assets/article-6.jpg')"
      class="white--text"
      gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .8)"
    >
      <v-container class="fill-height px-4 py-12">
        <v-responsive
          class="d-flex align-center text-center"
          height="100%"
          width="100%"
        >
          <h2>本アプリを作ろうと思った経緯</h2>
          <br />
          <p>運動不足解消のため普段筋トレやエアロバイクに乗っています。</p>
          <p>
            運動の記録をメモアプリに保存していたのですが、メモの保存先がわからなくなったり、計算するのが面倒。
          </p>
          <p>
            そのような悩みを解消するためにログを取れたらいいなと思い、制作にあたりました。
          </p>
        </v-responsive>
      </v-container>
    </v-img>

    <!-- 使用技術 -->
    <v-img
      :height="minHeight"
      :src="require('@/assets/article-6.jpg')"
      class="white--text"
      gradient="to right, rgba(5, 11, 31, .8), rgba(5, 11, 31, .8)"
    >
      <v-container class="fill-height px-4 py-12">
        <v-responsive
          class="d-flex align-center text-center"
          height="100%"
          width="100%"
        >
          <h2>さっそく始めよう</h2>
          <br />
          <v-btn color="info" @click="login">Googleでログイン</v-btn>
        </v-responsive>
      </v-container>
    </v-img>
  </div>
</template>

<script>
import firebase from "firebase/app";
// import About from "../components/About";

import { mapActions } from "vuex";
export default {
  components: {
    // About
  },
  created() {
    firebase.auth().onAuthStateChanged(user => {
      if (user) {
        this.setLoginUser(user);
        this.fetchAddresses();
        if (this.$router.currentRoute.name === "home")
          this.$router.push({ name: "addresses" });
      } else {
        this.deleteLoginUser();
        this.$router.push({ name: "home" });
      }
    });
  },
  data: () => ({
    link: "localhost:8000",
    features: [
      {
        icon: "mdi-pencil",
        name: "運動メニューの登録",
        description:
          "腕立て伏せや腹筋、懸垂などの名称や時間毎のカロリー消費を登録できます。"
      },
      {
        icon: "mdi-pencil",
        name: "運動ログの登録",
        description:
          "登録した運動メニューを元に回数や時間を登録できます。日・週・月毎に実施回数を確認できます。"
      },
      {
        icon: "mdi-pencil",
        name: "食品・料理の登録",
        description:
          "食品や料理の名称とカロリーやタンパク質、脂質などの登録ができます。"
      },
      {
        icon: "mdi-pencil",
        name: "食事ログ",
        description:
          "登録された食材・メニューを元に食事記録の登録ができます。日・週・月毎に摂取カロリーやたんぱく質を確認できます。"
      }
    ],
    cards: [
      {
        title: "Vue.js",
        description: "学習コストが低いため選択しました。"
      },
      {
        title: "TypeScript",
        description: "厳格に書きたいため"
      },
      {
        title: "Vuetify",
        description: "レスポンシブデザイン"
      },
      {
        title: "CSS/Sass",
        description: ""
      },
      {
        title: "Ruby on Rails",
        description: "Jsonをレスポンスで返すAPIモードを使いました。"
      },
      {
        title: "Jest",
        description: "フロントのテストに使用"
      },
      {
        title: "Rspec",
        description: "Railsのテストに使用"
      },
      {
        title: "Docker",
        description: "環境構築"
      },
      {
        title: "Swagger",
        description: "スキーマ駆動開発"
      },
      {
        title: "EC2",
        description: ""
      },
      {
        title: "RDS",
        description: ""
      },
      {
        title: "IAM",
        description: ""
      },
      {
        title: "Github Actions",
        description: ""
      },
      {
        title: "AWS Code Deploy",
        description: ""
      },
      {
        title: "Terraform",
        description: ""
      },
      {
        title: "Firebase",
        description: "ログイン機能にFirebase Authentication。バックエンドを"
      },
      {
        title: "Github",
        description: "Gitflowの理解。プルリク、レビュー"
      },
      {
        title: "Visual Studio Code",
        description: "エディタ"
      },
      {
        title: "Terminal",
        description: "linuxコマンド"
      },
      {
        title: "Squel Pro",
        description: "Mysqlの中身を確認"
      },
      {
        title: "Stoplight Studio",
        description: "APIの設計ツール"
      },
      {
        title: "Postman",
        description: "APIを叩く時に使用"
      },
      {
        title: "Git issue",
        description: "看板ツール"
      }
    ]
  }),
  methods: {
    ...mapActions(["login"])
  },

  computed: {
    minHeight() {
      const height = this.$vuetify.breakpoint.mdAndUp ? "100vh" : "50vh";

      return `calc(${height} - ${this.$vuetify.application.top}px)`;
    }
  }
};
</script>

<style scoped>
h1 {
  font-size: 90px;
}

a {
  text-decoration: none;
}
</style>
