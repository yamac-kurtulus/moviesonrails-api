# frozen_string_literal: true

class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :imdb_id, presence: true, uniqueness: true

  has_and_belongs_to_many :stars
  has_and_belongs_to_many :genres
end
