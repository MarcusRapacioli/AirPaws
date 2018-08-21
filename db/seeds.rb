# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(first_name: "prince", last_name: "william", email: "will@me.com", password: "moolah123")
User.create!(first_name: "prince", last_name: "harry", email: "harry@me.com", password: "moolah123")
Puppy.create!(name: "Vincent", breed: "poodle", price: 25000, age: 12, location: "london", user_id: 1)
