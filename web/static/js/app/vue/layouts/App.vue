<template lang="jade">
  .app
    .wrapper
      app-sidebar
      section.main
        transition(name="fade" mode="out-in")
          router-view.view
    footer
      app-footer
</template>

<script>
import AppSidebar from "../shared/AppSidebar"
import AppFooter from "../shared/AppFooter"

export default {
  components: {
    "app-sidebar": AppSidebar,
    "app-footer": AppFooter
  }
}
</script>
