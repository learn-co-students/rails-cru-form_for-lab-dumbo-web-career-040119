# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

Artist.reset_pk_sequence
Genre.reset_pk_sequence
Song.reset_pk_sequence

10.times do
  Artist.create(name: Faker::Music.unique.band, bio: Faker::Hipster.unique.sentence)
end

8.times do
  Genre.create(name: Faker::Music.unique.genre)
end

30.times do
  Song.create(name: Faker::Music.unique.album, artist: Artist.all.sample, genre: Genre.all.sample)
end
