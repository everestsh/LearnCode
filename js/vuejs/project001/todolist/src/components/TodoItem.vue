<template>
    <li @click="handleDelete">{{ index }}>  {{content}}</li>
</template>

<script>
export default {
    props: ['content', 'index'],
    methods: {
        handleDelete () {
        // alert(this.index)
        this.$emit('delete', this.index)
        }
    }
}
</script>

<style>

</style>
