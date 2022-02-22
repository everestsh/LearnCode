<template>
  <div id="app">
    <div>
      <input v-model="inputValue"/>
      <button @click="handleSubmit">提交</button>
    </div>
    <ul>
      <todo-item> </todo-item>
    </ul>
  </div>
</template>

<script>
// import TodoTtem from './components/TodoItem'
 export default {
  //  components: {
  //    'todo-item':TodoTtem
  //  },
   data () {
     return {
       inputValue: ``,
       list:[]
     }
   },
   methods: {
     handleSubmit () {
      //  alert(123)
      this.list.push(this.inputValue)
      this.inputValue = ``
     }
   }
 }
</script>

<style>

</style>
