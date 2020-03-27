FactoryBot.define do
  factory :star do
    name { generate :name }
    imdb_id { generate :star_imdb_id }
    poster_url { "MyText" }
    movie
  end

  sequence :star_imdb_id do |n|
    "nm#{n}"
  end
end
