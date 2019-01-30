# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Pin.destroy_all
Comment.destroy_all
5.times do
  user = User.create!(name: Faker::GreekPhilosophers.name)
end
10.times do
  pin = Pin.create!(url: Faker::Internet.url, user_id: User.order("RANDOM()").first.id)
end
20.times do
  comment = Comment.create!(content: Faker::GreekPhilosophers.quote, user_id: User.order("RANDOM()").first.id, pin_id: Pin.order("RANDOM()").first.id)
end
