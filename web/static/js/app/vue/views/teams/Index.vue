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
          th チーム名
          th 概要
          th
      tbody
        tr(v-for='team in teams') 
          td {{team.name}}
          td {{team.description}}
          th
            a.btn.btn-default(href="#" @click="moveTeamsShow(team.id)") Teams
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
    updateNameCont: "updateTeamsSearchFormNameCont",
    moveTeamsShow: "moveTeamsShow"
  })
}
</script>
