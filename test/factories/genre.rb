FactoryBot.define do
  factory :genre, class: Genre do
    name { generate :name }
    movie
  end
end
