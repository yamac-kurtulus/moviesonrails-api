class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})\z/ }
  validates :password_digest, presence: true

  has_secure_password
  has_and_belongs_to_many :followed_movies, class_name: 'Movie'
  has_and_belongs_to_many :followed_stars, class_name: 'Star'
  has_and_belongs_to_many :followed_genres, class_name: 'Genres'
end
