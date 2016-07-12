import Vue from "vue"
import Vuex from "vuex"
import * as actions from "./actions"

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    teams: {
      searchForm: {
        name_cont: ""
      },
      teams: []
    },
    currentView: "index"
  },
  mutations: {
    "FETCH_TEAMS" (state, x) {
      state.teams.teams = x
    },
    "UPDATE_TEAMS_SEARCH_FORM_NAME_CONT" (state, x) {
      state.teams.searchForm.name_cont = x
    },
    "MOVE_TEAMS_INDEX" (state, x) {
      state.currentView = "teams-index"
    },
  },
  actions: actions,
  getters: {
    getTeams: (state) => state.teams.teams,
    getTeamsSearchForm: (state) => state.teams.searchForm,
    getCurrentView: (state) => state.currentView
  }
})
