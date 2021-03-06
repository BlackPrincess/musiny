import * as types from './../mutation-types'

const state = {
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

const mutations = {
  [types.FETCH_TEAMS] (state, x) {
    state.teams = x
  },
  [types.FETCH_TEAM] (state, x) {
    state.team = x
  },
  [types.UPDATE_TEAMS_SEARCH_FORM_NAME_CONT] (state, x) {
    state.searchForm.name_cont = x
  },
}

export default {
  state, 
  mutations
}
