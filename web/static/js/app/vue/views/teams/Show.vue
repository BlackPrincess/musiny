<template lang="jade">
  .team-profile
    h3(v-text="team.name")
    .team-data
      .row
        .title 概要
        .data
          p(v-text="team.description")
      .row
        .title 目的
        .data
          p(v-text="team.purpose")
      .row
        .title 価値観
        .data
          p(v-text="team.sense_of_values")
      .row
        .title 目標
        .data
          p(v-text="team.goal")
      .row
        .title KPI
        .data
          p(v-text="team.kpi")
      .row
        .title 設立日
        .data
          span(v-text="team.establishment_on")
</template>

<script>
import { mapGetters, mapActions } from "vuex"
export default {
  computed: mapGetters({
    team: "getTeam"
  }),
  methods: mapActions({
    fetchTeam: "fetchTeam"
  }),
  beforeMount () {
    this.fetchTeam(this.$route.params.id)
  }
}
</script>

<style lang="scss">
.team-data {
  display: table;
  .row {
    display: table-row;
  }
  
  .title {
    display: table-cell;
  }
  
  .data {
    display: table-cell;
  }
}
</style>
