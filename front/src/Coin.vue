<template>
  <div>
    <table>
      <tr v-for="coin in coins" :key="coin.id">
        <td>{{ coin.code }}</td>
        <td>{{ coin.rate }}</td>
        <td>{{ coin.description }}</td>
        <td>{{ coin.rate_float }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        coins: null
      };
    },
    mounted() {
      this.axios
        .get('https://api.coindesk.com/v1/bpi/currentprice.json')
        .then(response => (this.coins = response.data.bpi))
    }
  }
</script>