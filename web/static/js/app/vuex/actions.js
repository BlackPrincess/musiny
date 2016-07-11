import * as axios from "axios"

export const fetch = (store, message) => {
  axios.get("/api/teams").then((res) => {
    store.commit("FETCH", res.data.data)
  })
}
