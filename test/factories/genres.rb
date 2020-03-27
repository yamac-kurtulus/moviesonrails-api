FactoryBot.define do
  factory :genre, class: Genre do
    name { generate :name }
    Movie
  end
end
