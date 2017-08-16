# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all


x1=Song.create(title: "thing 1", album: "album1", preview_url: "wwww.google.com")
x2=Song.create(title: "thing 2", album: "album2", preview_url: "wwww.google.com")
x3=Song.create(title: "thing 3", album: "album3", preview_url: "wwww.google.com")
