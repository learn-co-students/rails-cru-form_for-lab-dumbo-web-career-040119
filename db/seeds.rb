# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create(name: "Artist 1", bio: "Artist 1 bio")

artist2 = Artist.create(name: "Artist 2", bio: "Artist 2 bio")

artist3 = Artist.create(name: "Artist 3", bio: "Artist 3 bio")

genre1 = Genre.create(name: "genre 1")

genre2 = Genre.create(name: "genre 2")

genre3 = Genre.create(name: "genre 3")

song1 = Song.create(name: "Song 1", artist_id: artist1, genre_id: genre1)

song2 = Song.create(name: "Song 2", artist_id: artist2, genre_id: genre2)

song3 = Song.create(name: "Song 3", artist_id: artist3, genre_id: genre3)