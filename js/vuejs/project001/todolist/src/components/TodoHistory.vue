<template>
  <div >
    <li >TodoHistory</li>
    <ValidationObserver v-slot="{ invalid }"> // ValidationObserver 要注册一下
      <form @submit.prevent="onSubmit">
        <ValidationProvider name="E-mail" rules="required|email" v-slot="{ errors }">
          <input v-model="email" type="email">
          <span>{{ errors[0] }}</span>
        </ValidationProvider>
        <button type="submit" :disabled="invalid">Submit</button>
      </form>
    </ValidationObserver>
  </div>
</template>

<script>

import { ValidationProvider, extend } from 'vee-validate'
import { required } from 'vee-validate/dist/rules'

export default {
  data: () => ({
    email: '',
    firstName: '',
    lastName: ''
  }),
  methods: {
    onSubmit () {
      alert('Form has been submitted!')
    }
  },
  components: {
    ValidationProvider
  }
}

extend('positive', value => {
  return value >= 0
})
// Add the required rule
extend('required', {
  ...required,
  message: 'This field is required'
})
</script>

<style>

</style>
