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
import { ref, reactive } from 'vue'
import axios from 'axios'

export default {
  name: 'Magasin',
  setup() {
    const newCollection = reactive({
      association_name: '',
      collect_date: '',
      description: ''
    })
    const loading = ref(false)
    const message = ref('')
    const messageClass = ref('')

    const createFoodCollection = () => {
      loading.value = true
      message.value = ''

      const collectionData = {
        food_collection: {
          association_name: newCollection.association_name,
          collect_date: newCollection.collect_date,
          description: newCollection.description
        }
      }

      axios.post('http://0.0.0.0:3000/food_collections', collectionData)
        .then(response => {
          message.value = 'Collecte de denrées alimentaires créée avec succès !'
          messageClass.value = 'success'
          resetForm()
          loading.value = false
        })
        .catch(error => {
          message.value = 'Erreur lors de la création de la collecte.'
          messageClass.value = 'error'
          console.error(error)
          loading.value = false
        })
    }

    const resetForm = () => {
      newCollection.association_name = ''
      newCollection.collect_date = ''
      newCollection.description = ''
    }

    return {
      newCollection,
      loading,
      message,
      messageClass,
      createFoodCollection,
      resetForm
    }
  }
}
</script>

<!-- what the user see going on the magasin page
 it also contains the logic to send the information back to the API -->