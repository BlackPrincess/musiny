import Vue from "vue"
import Vuex from "vuex"
import * as actions from "./actions"
import teams from "./modules/teams"

Vue.use(Vuex)

export default new Vuex.Store({
  modules: {
    teams
  },
  mutations:{
    "UPDATE_TEAMS_SEARCH_FORM_NAME_CONT" (state, x) {
      state.teams.searchForm.name_cont = x
    }
  },
  actions: actions,
  getters: {
    getTeams: (state) => state.teams.teams,
    getTeam: (state) => state.teams.team,
    getTeamsSearchForm: (state) => state.teams.searchForm
  }
})
