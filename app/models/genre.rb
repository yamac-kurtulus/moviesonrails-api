# frozen_string_literal: true

class Genre < ApplicationRecord
  validates :name, presence: true
  validates :movies, presence: true
  has_many :movies, :through => :genres_movies
end
