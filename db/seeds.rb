# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  article = Article.new(
    title: Faker::TvShows::HowIMetYourMother.catch_phrase,
    content: Faker::TvShows::HowIMetYourMother.quote #=> "Whenever I’m sad, I stop being sad and be awesome instead."
  )
  article.save!
  puts "#{article.title} created!"
end
