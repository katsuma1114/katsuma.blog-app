# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jhon = User.create!(email: 'jhon@gmail.com', password: 'password')
emily = User.create!(email: 'emily@gmail.com', password: 'password')

5.times do
    jhon.articles.create!(
        title: Faker::Lorem.sentence(word_count: 5),
     content: Faker::Lorem.sentence(word_count: 100)
    )
end

5.times do
    emily.articles.create!(
        title: Faker::Lorem.sentence(word_count: 5),
     content: Faker::Lorem.sentence(word_count: 100)
    )
end