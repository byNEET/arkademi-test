<template>
  <div id="app">
  <div>
  <b-navbar toggleable="lg" type="dark" variant="info">
    <b-navbar-brand href="#">Arkademi</b-navbar-brand>

    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

    

      <!-- Right aligned nav items -->
      <b-navbar-nav class="ml-auto">
        <!-- <b-nav-form> -->
          <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
          <b-button size="sm" class="my-2 my-sm-0" type="submit">Add</b-button>
        <!-- </b-nav-form> -->
      </b-navbar-nav>

  </b-navbar>
</div>

   <!-- ------------------------------------------------------------------------ -->
    <b-container>
      <br/><br/><br/><br/><br/>
      <div class="card">
    <b-table striped hover :items="items"></b-table>
      </div>
    </b-container>
   
  </div>
</template>

<script>

export default {
  name: 'app',
  components: {

  },
  data () {
    return {
      items: [
        { age: 40, first_name: 'Dickerson', last_name: 'Macdonald' },
        { age: 21, first_name: 'Larsen', last_name: 'Shaw' },
        { age: 89, first_name: 'Geneva', last_name: 'Wilson' },
        { age: 38, first_name: 'Jami', last_name: 'Carney' }
      ]
    }
  },
  methods: {

  },
  mounted: function () {

  }
}
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
