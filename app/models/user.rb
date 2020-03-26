class User < ApplicationRecord
  
  has_secure_password
  has_and_belongs_to_many :followed_movies, class_name: 'Movie'
  has_and_belongs_to_many :followed_stars, class_name: 'Star'
  has_and_belongs_to_many :followed_genres, class_name: 'Star'
end
