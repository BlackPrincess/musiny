<template lang="jade">
  .col-sm-12
    h3 Teams

    form#teamSearchForm.form.form-inline
      fieldset
        .form-group
          label チーム名
          input.form-control(name="name_cont" maxlength=100, :value="form.name_cont" @change="updateNameCont")
        .form-group
          button.btn.btn-primary(type="button" @click="fetchTeams") Search
    
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
    teams: "getTeams",
    form: "getTeamsSearchForm"
  }),
  methods: mapActions({
    fetchTeams: "fetchTeams",
    updateNameCont: "updateTeamsSearchFormNameCont"
  })
}
</script>
