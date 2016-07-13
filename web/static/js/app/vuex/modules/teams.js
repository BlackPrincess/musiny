import * as types from './../mutation-types'

export const state = {
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
}

export const mutations = {
  [types.FETCH_TEAMS] (state, x) {
    state.teams.teams = x
  },
  [types.FETCH_TEAM] (state, x) {
    state.teams.team = x
  },
  [types.UPDATE_TEAMS_SEARCH_FORM_NAME_CONT] (state, x) {
    state.teams.searchForm.name_cont = x
  },
}
