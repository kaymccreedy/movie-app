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