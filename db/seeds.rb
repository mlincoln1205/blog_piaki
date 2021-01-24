
require "faker"

# 5.times do
#     puts "Creating articles..."
#     article = Article.create!(
#         title: Faker::Games::StreetFighter.quote, 
#         body: Faker::ChuckNorris.fact)
#     puts "Articles created!"
# end

5.times do
    puts "Creating articles..."
    article = Article.create!(
        title: Faker::TvShows::StrangerThings.quote, 
        body: Faker::Lorem.paragraphs(number: 1))
    puts "Articles created!"
end