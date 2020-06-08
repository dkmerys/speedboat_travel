class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    20.times do |i|
      review = Review.create!(
        author: Faker::TvShows::RickAndMorty.character,
        content: Faker::Hipster::sentence(word_count: 10),
        country: Faker::WorldCup.team,
        city: Faker::Nation::capital_city
      )
      puts "Review #{i}: Author is #{review.author} and the review content is '#{review.content}'."
    end
   end 
end

  Seed.begin