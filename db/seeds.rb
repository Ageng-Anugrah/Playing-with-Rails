# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
for _ in 1..10 do
    Article.create({
        title: Faker::Book.title,
        body: Faker::Lorem.sentence,
        status: 'public'
    })
end