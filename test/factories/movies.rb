FactoryBot.define do
  factory :movie do
    title { generate :title }
    imdb_id { generate :movie_imdb_id }
    imdb_rating { 9.99 }
    poster_url { "movie_url" }
    plot { "bla bla" }

    factory :movie_with_genres_stars do
      transient do
        genres_count{ 3 }
      end
    end

    after(:create) do |movie, evaluator|
      puts 'aaaaa' + movie.to_json
      puts 'bbbbb' + movie.genres.to_json
      movie.genres << Genre.all[0]

      create_list(:genre, evaluator.genres_count, movies: [movie])
      puts 'ccccc' + movie.genres.to_json
      create_list(:star, evaluator.genres_count, movies: [movie])
    end
  end

  sequence :title do |n|
    "title#{n}"
  end

  sequence :movie_imdb_id do |n|
    "nm#{n}"
  end
end
