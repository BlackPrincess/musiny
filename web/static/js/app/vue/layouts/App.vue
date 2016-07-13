<template lang="jade">
  article.app.container-fluid
    .row
      app-sidebar
      section.col-sm-9.content
        component(:is="currentView")
    footer.row
      app-footer
</template>

<script>
import { mapGetters, mapActions } from "vuex"
import AppSidebar from "../shared/AppSidebar"
import AppFooter from "../shared/AppFooter"
// pages
import Index from "../views/Index"
import TeamsIndex from "../views/teams/Index"
import TeamsShow from "../views/teams/Show"

export default {
  components: {
    "app-sidebar": AppSidebar,
    "app-footer": AppFooter,
    // pages
    "index": Index,
    "teams-index": TeamsIndex,
    "teams-show": TeamsShow,
  },
  computed: mapGetters({
    currentView: "getCurrentView"
  })
}
</script>
