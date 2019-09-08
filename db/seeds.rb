# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.create(name:"Pop")
Genre.create(name:"Rock")
Genre.create(name:"Indie")

Artist.create(name: "Adele", bio: "blah blah")
Artist.create(name: "Lionel Richie", bio: "blah blah blah")
Artist.create(name: "Blur", bio: "blah blah")

Song.create(name: "hello", artist_id: 1, genre_id: 1)
Song.create(name: "hello", artist_id: 2, genre_id: 1)
Song.create(name: "song2", artist_id: 3, genre_id: 3)
Song.create(name: "dancing on the ceiling", artist_id: 2, genre_id: 1)