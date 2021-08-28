<template>
  <div id="app">
    <div>
      <!-- v-model=<モデル名>でdataで指定したプロパティを変更できる -->
      <input v-model="title" placeholder="title" />
      <input v-model="description" placeholder="description" />
      <button @click="addMemo">メモを追加</button>
    </div>
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
      title: "",
      description: "",
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
    addMemo: function () {
      axios
        .post("api/memos", {
          title: this.title,
          description: this.description,
        })
        .then((response) => this.setMemo());
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
