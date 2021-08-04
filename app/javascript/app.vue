<template>
  <div id="app">
    <p>{{ memo }}</p>
    <ul>
      <li v-for="memo in memos" :key="memo.id">
        {{ memo.title }} : {{ memo.description }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      memos: "memos",
    };
  },
  mounted() {
    this.setMemo();
  },
  methods: {
    setMemo: function () {
      // axios.<httpメソッド>(<route>)でデータを取得してthis.memosに保存する
      axios.get("api/memos").then((response) => (this.memos = response.data));
    },
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
