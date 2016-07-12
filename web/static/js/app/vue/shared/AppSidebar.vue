<template lang="jade">
  section.col-sm-3.sidebar
    h1 Musiny
    .col-sm-12.text-center
      img.thumbnail(src='https://placehold.jp/152x152.png' width='152' height='152')
    ul.list-unstyled
      li
        a(@click="moveTeamsIndex") Teams
</template>

<script>
import { mapGetters, mapActions } from "vuex"
export default {
  computed: mapGetters({
    teams: "getTeams"
  }),
  methods: mapActions({
    moveTeamsIndex: "moveTeamsIndex"
  })
}
</script>
