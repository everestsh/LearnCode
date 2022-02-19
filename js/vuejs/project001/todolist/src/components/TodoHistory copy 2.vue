<template>
  <div class="hellowd">
    <li >TodoHistory</li>
    <validation-provider rules="required" v-slot="{ errors }">
    <input v-model="value" name="myinput" type="text" />
    <span>{{ errors[0] }}</span>
    </validation-provider>
  </div>

</template>

<script>

import { ValidationProvider, extend } from 'vee-validate'
import { required } from 'vee-validate/dist/rules'

export default {
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
