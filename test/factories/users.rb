FactoryBot.define do
  factory :user, class: User

  factory :user_with_Follows,  class: User do 
    transient do
      languages_count { 5 }
    end
  end
end

