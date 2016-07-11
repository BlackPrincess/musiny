import Vue from "vue"
import Vuex from "vuex"
import * as actions from "./actions"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    teams: []
  },
  mutations: {
    "FETCH" (state, x) {
      state.teams = x
    }
  },
  actions: actions,
  getters: {
    getTeams: (state) => state.teams
  }
})
