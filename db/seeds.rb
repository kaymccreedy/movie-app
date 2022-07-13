# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
actor.save

actor = Actor.new({first_name: "Robert", last_name: "De Niro", known_for: "Raging Bull"})
actor.save

actor = Actor.new({first_name: "Charlie", last_name: "Day", known_for: "It's Always Sunny in Philadelphia"})
actor.save

actor = Actor.new({first_name: "Jeff", last_name: "Bridges", known_for: "The Big Lebowski"})
actor.save

actor = Actor.new({first_name: "Brad", last_name: "Pitt", known_for: "Fight Club"})
actor.save

# Movies

movie = Movie.new({title: "The Witch", year: "2015", plot: "A family in 1630s New England is torn apart by the forces of witchcraft, black magic, and possession."})
movie.save

movie = Movie.new({title: "The Big Lebowski", year: "1998", plot: "Ultimate L.A. slacker Jeff 'The Dude' Lebowski, mistaken for a millionaire of the same name, seeks restitution for a rug ruined by debt collectors, enlisting his bowling buddies for help while trying to find the millionaire's missing wife."})
movie.save

movie = Movie.new({title: "The Grand Budapest Hotel", year: "2014", plot: "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge."})
movie.save 

movie = Movie.new({title: "Se7en", year: "1997", plot: "Serial killer murders people by way of the seven deadly sins."})
movie.save 

movie = Movie.new({title: "Power of the Dog", year: "2021", plot: "Masculinity gets in the way."})
movie.save 