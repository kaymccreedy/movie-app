/* global Vue */
/* global axios */

var App = {
  data: function() {
    return {
      message: "Hello from JavaScript!",
      actors: [],
    };
  },
  methods: {
    indexMovies: function () {
      axios.get("http://localhost:3000/actors").then(function(response) {
        var actors = response.data;
        console.log(actors);
      });
    },
  },
};

Vue.createApp(App).mount('#app');