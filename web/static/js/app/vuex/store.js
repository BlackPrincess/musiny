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
      teams: [],
      team: {
        name: "",
        description: "",
        purpose: "",
        sense_of_values: "",
        goal: "",
        kpi: "",
        establishment_on: ""
      }
    },
    currentView: "index"
  },
  mutations: {
    "FETCH_TEAMS" (state, x) {
      state.teams.teams = x
    },
    "FETCH_TEAM" (state, x) {
      state.teams.team = x
    },
    "UPDATE_TEAMS_SEARCH_FORM_NAME_CONT" (state, x) {
      state.teams.searchForm.name_cont = x
    },
    "MOVE_TEAMS_INDEX" (state, x) {
      state.currentView = "teams-index"
    },
    "MOVE_TEAMS_SHOW" (state, x) {
      state.currentView = "teams-show"
    }
  },
  actions: actions,
  getters: {
    getTeams: (state) => state.teams.teams,
    getTeam: (state) => state.teams.team,
    getTeamsSearchForm: (state) => state.teams.searchForm,
    getCurrentView: (state) => state.currentView
  }
})
