# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
    {email: "admin1@test.com", password: "abc123", password_confirmation: "abc123", admin: true},
    {email: "user1@test.com", password: "abc123", password_confirmation: "abc123", admin: false},
    {email: "user2@test.com", password: "abc123", password_confirmation: "abc123", admin: false}
  ])

Product.create!([
    {name: "First product", description: "This is the first TW product you really want to buy it", user: User.first, price: 100},
    {name: "2nd product", description: "This is the 2nd ever TW product", user: User.first, price: 19.90},
    {name: "3rd product", description: "This is the 3rd ever TW product", user: User.first, price: 10},
    {name: "4th product", description: "This is the 4th and best ever TW product", user: User.first, price: 199.99}
  ])
