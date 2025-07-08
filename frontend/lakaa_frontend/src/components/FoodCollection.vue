<template>
  <div class="food_collection_container">
    <h1>Voici vos collectes de denrées alimentaires :</h1>
    <div id="food_collections">
      <div v-for="food_collection in food_collections" :key="food_collection.id">
        <p>Collecte de denrees alimentaire avec l'association {{ food_collection.association_name }}, le {{ food_collection.collect_date }}
          <br>
          <span v-if="food_collection.description && food_collection.description.trim()">
            Description : {{ food_collection.description }}
            <br>
          </span>
          <br>
        </p>
      </div>
    </div>
    <router-link to="/magasin">
      Magasin
    </router-link>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'FoodCollection',
  data () {
    return {
      food_collections: [],
      error: []
    }
  },
  created () {
    axios.get('http://0.0.0.0:3000/food_collections')
      .then(response => {
        this.food_collections = response.data
      })
      .catch(e => {
        this.error.push(e)
      })
  }
}
</script>
