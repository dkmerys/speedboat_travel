FactoryBot.define do
  factory(:review) do
        author {Faker::TvShows::RickAndMorty.character}
        content {Faker::Hipster::sentence(word_count: 10)}
        country {Faker::WorldCup.team}
        city {Faker::Nation::capital_city}
    end
  end