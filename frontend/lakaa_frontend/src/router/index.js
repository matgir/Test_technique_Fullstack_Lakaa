import { createRouter, createWebHistory } from 'vue-router'
import HelloWorld from '@/components/HelloWorld.vue'
import FoodCollections from '@/components/FoodCollection.vue'
import Magasin from '@/components/Magasin.vue'

const routes = [
  {
    path: '/',
    name: 'HelloWorld',
    component: HelloWorld
  },
  {
    path: '/food-collections',
    name: 'FoodCollections',
    component: FoodCollections
  },
  {
    path: '/magasin',
    name: 'Magasin',
    component: Magasin
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes
})

export default router

// ##@## the logic of the SPA is done here, create the web history for the back and forward arrows