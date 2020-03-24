class User < ApplicationRecord
  has_secure_password :password_digest
  has_and_belongs_to_many :followed_movies, classname: 'Movie'
  has_and_belongs_to_many :followed_stars, classname: 'Star'
  has_and_belongs_to_many :followed_genre, classname: 'Genre' 
end
