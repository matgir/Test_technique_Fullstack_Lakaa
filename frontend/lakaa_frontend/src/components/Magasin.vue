<template>
  <div>
    <form @submit.prevent="createFoodCollection" class="collection-form">
      <div class="form-group">
        <label for="association_name">
          Nom de l'association *
        </label>
        <input
        type="text"
        id="association_name"
        v-model="newCollection.association_name"
        required
        >
      </div>

      <br>

      <div class="form-group">
        <label for="collect_date">
          Date de collecte *
        </label>
        <input
        type="date"
        id="collect_date"
        v-model="newCollection.collect_date"
        required
        >
      </div>

      <br>

      <div class="form-group">
        <label for="description">
          Description
        </label>
        <textarea
        id="description"
        v-model="newCollection.description"
        maxlength="500"
        ></textarea>
      </div>

      <br>

      <div class="form-actions">
        <button type="submit">
          Ajouter la collecte
        </button>
      </div>

      <br>

    </form>

    <router-link to="/food-collections">
      Food Collection
    </router-link>

    <div v-if="message" :class="messageClass" class="message">
      {{ message }}
    </div>

  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Magasin',
  data () {
    return {
      newCollection: {
        association_name: '',
        collect_date: '',
        description: ''
      },
      loading: false,
      message: '',
      messageClass: ''
    }
  },
  methods: {
    createFoodCollection () {
      this.loading = true
      this.message = ''

      const collectionData = {
        food_collection: {
          association_name: this.newCollection.association_name,
          collect_date: this.newCollection.collect_date,
          description: this.newCollection.description
        }
      }

      axios.post('http://localhost:3000/food_collections', collectionData)
        .then(response => {
          this.message = 'Collecte de denrées alimentaires créée avec succès !'
          this.messageClass = 'success'
          this.resetForm()
          this.loading = false
        })
        .catch(error => {
          this.message = 'Erreur lors de la création de la collecte.'
          this.messageClass = 'error'
          console.error(error)
          this.loading = false
        })
    },

    resetForm () {
      this.newCollection = {
        association_name: '',
        collect_date: '',
        description: ''
      }
    }
  }
}
</script>
