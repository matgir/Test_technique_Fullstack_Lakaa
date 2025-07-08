import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import FoodCollections from '@/components/FoodCollection'
import Magasin from '@/components/Magasin'

Vue.use(Router)

export default new Router({
  routes: [
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
})
