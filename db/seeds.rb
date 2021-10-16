# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(name: "seed", email: "seed@example.com", password: "password", password_confirmation: "password")

10.times do |i|
  user.posts.create(title: "seed_title_#{i}", body: "seed_body_#{i}")
end
