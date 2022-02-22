<template>
  <div id="app">
    <!-- <h1>{{ msg }}</h1> -->
    <div>
      <h1>{{ msg }}</h1>
      <h2>Add the list</h2>
      <input v-model="inputValue"/>
      <button @click="handleSubmit">提交</button>
      <ul>
        <!-- <todo-item v-for="(item, index) of list" :content="item"> </todo-item> -->
        <todo-item v-for="(item, index) of list"
        :key="index.label"
        :content="item"
        :index="index"
        @delete="handleDelete"
         > </todo-item>
      </ul>
      <ul>
        <todo-history> </todo-history>
      </ul>
    </div>
  </div>
</template>

<script>
import TodoItem from './components/TodoItem'
import TodoHistory from './components/TodoHistory'
export default {
  // name: 'HelloWorld',
  components: {
    'todo-item': TodoItem,
    'todo-history': TodoHistory
  },
  data () {
    return {
      inputValue: '',
      list: [],
      msg: 'Welcome to Your Todo List App'
    }
  },
  methods: {
    handleSubmit () {
      // alert(123)
      this.list.push(this.inputValue)
      this.inputValue = ''
    },
    handleDelete (index) {
      this.list.splice(index, 1)
    }
  }
}
</script>

<style>

</style>
