# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
lil_jon = Artist.create(name: "Lil Jon", bio: "To the windows to the walls.")
beatles = Artist.create(name: "The Beatles", bio: "From England.")

rap = Genre.create(name: "Rap/HipHop")
rock = Genre.create(name: "Rock")

low = Song.create(name: "Get Low", artist_id: lil_jon.id, genre_id: rap.id)
yellow = Song.create(name: "Yellow Submarine", artist_id: beatles.id, genre_id: rock.id)
