/* global Vue */
/* global axios */

var App = {
  data: function() {
    return {
      message: "Movies!",
    };
  },
  methods: {
    indexMovies: function () {
      axios.get("http://localhost:3000/movies").then(function(response) {
        var movies = response.data;
        console.log(movies);
      });
    },
  },
};

Vue.createApp(App).mount('#app');