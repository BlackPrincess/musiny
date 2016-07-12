<template lang="jade">
  .col-sm-12
    h3 Teams
    button.btn.btn-primary(@click="fetchTeams") Click Me
    
    table.table.table-striped
      thead
        tr
          th Name
          th Description
      tbody
        tr(v-for='team in teams') 
          td {{team.name}}
          td {{team.description}}
</template>

<script>
import { mapGetters, mapActions } from "vuex"
export default {
  computed: mapGetters({
    teams: "getTeams"
  }),
  methods: mapActions({
    fetchTeams: "fetchTeams"
  })
}
</script>
