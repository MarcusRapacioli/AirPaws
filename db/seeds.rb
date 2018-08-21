# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(first_name: "prince", last_name: "william", email: "will@me.com", password: "moolah123")
User.create!(first_name: "prince", last_name: "harry", email: "harry@me.com", password: "whater")
User.create!(first_name: "prince", last_name: "john", email: "john@me.com", password: "moolah123")
User.create!(first_name: "prince", last_name: "trump", email: "trump@me.com", password: "moolah123")
User.create!(first_name: "prince", last_name: "beyonce", email: "bey@me.com", password: "moolah123")
User.create!(first_name: "prince", last_name: "50 Cent", email: "fiddy@me.com", password: "moolah123")
Puppy.create!(name: "Vincent", breed: "poodle", price: 25000, age: 12, location: "london", user_id: 1)
Puppy.create!(name: "queen", breed: "lab", price: 23, age: 2, location: "london", user_id: 2)
Puppy.create!(name: "megan", breed: "pug", price: 1, age: 12, location: "the shire", user_id: 3)
Puppy.create!(name: "james cordon", breed: "bulldog", price: 250500, age: 12, location: "bangkok", user_id: 4)
Puppy.create!(name: "lil whiskers ", breed: "auzzy shepard", price: 25000, age: 12, location: "china", user_id: 5)
