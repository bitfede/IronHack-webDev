# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding database with 10 contacts"

c1 = Contact.create(name: "Jack", address: "123 A st", phone_number: "123456789", email: "jack@example.com")
c2 = Contact.create(name: "John", address: "222 B st", phone_number: "1236756789", email: "john@example.com")
c3 = Contact.create(name: "Al", address: "333 C st", phone_number: "1234567889", email: "al@example.com")
c4 = Contact.create(name: "Brigitte", address: "455 Ab st", phone_number: "1923456789", email: "bri@example.com")
c5 = Contact.create(name: "Hal", address: "654 abc st", phone_number: "1323456789", email: "hal@example.com")
c6 = Contact.create(name: "Bob", address: "776 bnc st", phone_number: "1523456789", email: "bob@example.com")
c7 = Contact.create(name: "Stan", address: "225 A ave", phone_number: "1273456789", email: "stan@example.com")
c8 = Contact.create(name: "Smith", address: "568 aswd st", phone_number: "21723456789", email: "smith@example.com")
c9 = Contact.create(name: "Ralph", address: "123 street st", phone_number: "1123456789", email: "ralph@example.com")
c10 = Contact.create(name: "Mike", address: "111 Abbey st", phone_number: "2123456789", email: "mike@example.com")