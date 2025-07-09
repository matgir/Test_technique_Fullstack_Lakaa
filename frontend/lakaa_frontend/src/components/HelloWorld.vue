<template>
  <div class="hello">
    <router-link to="/food-collections">
      Food Collection
    </router-link>
    <br>
    <router-link to="/magasin">
      Magasin
    </router-link>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld'
}
</script>

<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>

<!-- ##@## modified automaticaly created vue to make some king of home page -->