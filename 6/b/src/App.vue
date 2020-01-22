<template>
  <div id="app">
    <div>
      <b-navbar toggleable="lg" type="dark" variant="info">
        <b-navbar-brand href="#">Arkademi</b-navbar-brand>

        <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

        <!-- Right aligned nav items -->
        <b-navbar-nav class="ml-auto">
          <!-- <b-nav-form> -->
          <b-form-input
            size="sm"
            class="mr-sm-2"
            placeholder="Search"
          ></b-form-input>
          <b-button size="sm" class="my-2 my-sm-0" type="submit">Add</b-button>
          <!-- </b-nav-form> -->
        </b-navbar-nav>
      </b-navbar>
    </div>

    <!-- ------------------------------------------------------------------------ -->
    <b-container>
      <br /><br /><br /><br /><br />
      <div class="card">
        <b-table striped hover :items="items"></b-table>
      </div>
    </b-container>
    <div
      class="footer bg-info nav mx-auto"
      style="margin-top:-1; text-align:center;"
    >
      Arkademi
    </div>
  </div>
</template>

<script>
export default {
  name: "app",
  components: {},
  data() {
    return {
      items: [
        {
          id: 1,
          cashier: "Pevita Pearce",
          product: "Latte",
          category: "Drink",
          price: 10000
        },
        {
          id: 2,
          cashier: "Raisa Andriana",
          product: "Cake",
          category: "Food",
          price: 20000
        },
        {
          id: 3,
          cashier: "khairul anas",
          product: "nasgor",
          category: "Food",
          price: 45000
        }
      ]
    };
  },
  methods: {},
  mounted: function() {}
};
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
