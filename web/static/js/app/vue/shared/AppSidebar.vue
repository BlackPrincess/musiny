<template lang="jade">
  section.sidebar
    h1 Musiny
    img.thumbnail(src='https://placehold.jp/152x152.png' width='152' height='152')
    ul
      li
        a(href="#" @click="moveTeamsIndex") Teams
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
