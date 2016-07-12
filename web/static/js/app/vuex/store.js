import Vue from "vue"
import Vuex from "vuex"
import * as actions from "./actions"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    teams: [],
    currentView: "index"
  },
  mutations: {
    "FETCH_TEAMS" (state, x) {
      state.teams = x
    },
    "MOVE_TEAMS_INDEX" (state, x) {
      state.currentView = "teams-index"
    }
  },
  actions: actions,
  getters: {
    getTeams: (state) => state.teams,
    getCurrentView: (state) => state.currentView
  }
})
