import Vue from 'vue'
import VueRouter from 'vue-router'

// components
import Index from "../vue/views/Index"
import TeamsIndex from "../vue/views/teams/Index"
import TeamsShow from "../vue/views/teams/Show"

Vue.use(VueRouter)

export default new VueRouter({
  mode: 'history',
  routes: [
    { path: '/', component: Index },
    { path: '/app/teams', component: TeamsIndex },
    { path: '/app/teams/:id', component: TeamsShow }
  ]
})
