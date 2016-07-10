// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"
import Vue from "vue"
import Vuex, { mapGetters, mapActions } from "vuex"
import * as axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    teams: []
  },
  mutations: {
    "FETCH" (state, x) {
      state.teams = x
    }
  },
  actions: {
    fetch(store, message) {
      axios.get("/api/teams").then((res) => {
        store.commit("FETCH", res.data.data)
      })
    }
  },
  getters: {
    getTeams: (state) => state.teams
  }
})

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"

document.addEventListener("DOMContentLoaded", () => {
  const index = new Vue({
    el: "#app",
    data : {},
    render(h) {
      return h("ul", this.teams.map((team) => h("li", team.name)))
    },
    created() {
      this.$store.dispatch("fetch")
    },
    computed: mapGetters({
      teams: "getTeams"
    }),
    methods: mapActions({
      fetch: "fetch"
    }),
    store
  })
})
