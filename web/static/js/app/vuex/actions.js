import * as axios from "axios"

export const fetchTeams = (store, message) => {
  axios.get("/api/teams", {params: store.state.teams.searchForm}).then((res) => {
    store.commit("FETCH_TEAMS", res.data.data)
  })
}

export const fetchTeam = (store, id) => axios.get(`/api/teams/${id}`).then((res) => {
    store.commit("FETCH_TEAM", res.data.data)
  })

export const updateTeamsSearchFormNameCont = (store, message) => {
  store.commit("UPDATE_TEAMS_SEARCH_FORM_NAME_CONT", message.target.value)
}
