# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "--------------------------------------------"
puts " Seeding the database with test values...   "
puts "--------------------------------------------"

concertA = Concert.create(artist: "ACDC", venue: "AAArena", city:"Miami", date: Time.now + 3.day, price: 59.99 , description: "The ACDC are back for a crazy concert in Miami, FL !!! Grab your tickets and rock n roll!")
concertB = Concert.create(artist: "Guns n Roses", venue: "BankAtlantic center", city:"Miami", date: Time.now + 1.day, price: 79.99 , description: "The Guns n Roses are back for a crazy concert in Miami, FL !!! Grab your tickets and rock n roll!")
concertC = Concert.create(artist: "Skrillex", venue: "AAArena", city:"Miami", date: Time.now, price: 39.99 , description: "Skrillex in Miami for an unforgettable dubstep night in Miami !!!")
concertD = Concert.create(artist: "Airborne", venue: "Bankunited center", city:"Miami", date: Time.now + 7.day, price: 39.99 , description: "Airborne performing live! If you are a hard rock lover, do not miss it!")
concertE = Concert.create(artist: "Eminem", venue: "Amway Arena", city:"Orlando", date: Time.now + 8.day, price: 69.99 , description: "Eminem's concert in Orlando, will be an amazing rap night with many surprise guest")
concertF = Concert.create(artist: "Drake", venue: "Ft lauderdale stadium", city:"Ft Lauderdale", date: Time.now + 2.day, price: 39.99 , description: "Drake concert! Tickets about to sold out!!!")
concertG = Concert.create(artist: "David Guetta", venue: "Liv", city:"Miami", date: Time.now + 2.day, price: 29.99 , description: "Liv Miami is going all-out with David Guetta plus local guest DJs")
concertH = Concert.create(artist: "The Offspring", venue: "AAArena", city:"Miami", date: Time.now + 11.day, price: 59.99 , description: "The Offspring have never disappointed with their performance, tickets are almost sold out hurry up!")

puts "--------------------------------------------"
puts " Seeding COMPLETED  "
puts "--------------------------------------------"
