<template lang="jade">
  .col-sm-12
    h3(v-text="team.name")
    dl.dl-horizontal
      dt 概要
      dd
        pre(v-text="team.description")
      dt 目的
      dd
        pre(v-html="team.purpose")
      dt 価値観
      dd
        pre(v-text="team.sense_of_values")
      dt 目標
      dd
        pre(v-text="team.goal")
      dt KPI
      dd
        pre(v-text="team.kpi")
      dt 設立日
      dd(v-text="team.establishment_on")
</template>

<script>
import { mapGetters, mapActions } from "vuex"
export default {
  computed: mapGetters({
    team: "getTeam"
  }),
  methods: mapActions({
    fetchTeam: "fetchTeam"
  })
}
</script>
