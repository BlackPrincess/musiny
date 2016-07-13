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

// Router
export const moveTeamsIndex = (store, message) => {
  store.commit("MOVE_TEAMS_INDEX")
}

export const moveTeamsShow = (store, id) => {
  fetchTeam(store, id).then((_) => store.commit("MOVE_TEAMS_SHOW"))
}
