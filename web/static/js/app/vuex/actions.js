import * as axios from "axios"

export const fetchTeams = (store, message) => {
  axios.get("/api/teams").then((res) => {
    store.commit("FETCH_TEAMS", res.data.data)
  })
}

export const moveTeamsIndex = (store, message) => {
  store.commit("MOVE_TEAMS_INDEX")
}
