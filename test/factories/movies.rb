FactoryBot.define do
  factory :movie do
    title { generate :title }
    imdb_id { generate :movie_imdb_id }
    imdb_rating { 9.99 }
    poster_url { "movie_url" }
    plot { "movie_plot" }

    transient do
      genres_count { 3 }
    end
    transient do
      stars_count { 3 }
    end

    after(:create) do |movie, evaluator|
      create_list(:genre, evaluator.genres_count, profiles: [movie])
    end
  end

  sequence :title do |n|
    "title#{n}"
  end

  sequence :movie_imdb_id do |n|
    "nm#{n}"
  end
end
