<template lang="jade">
  .app.container-fluid
    .row
      app-sidebar
      section.col-sm-9.content
        h2 Teams
        ul.list-unstyled
          li(v-for='team in teams') {{team.name}}
    .row
      app-footer
</template>

<script>
import { mapGetters, mapActions } from "vuex"
import AppSidebar from "../shared/AppSidebar"
import AppFooter from "../shared/AppFooter"

export default {
  components: {
    "app-sidebar": AppSidebar,
    "app-footer": AppFooter
  },
  computed: mapGetters({
    teams: "getTeams"
  }),
  methods: mapActions({
    fetch: "fetch"
  })
}
</script>
