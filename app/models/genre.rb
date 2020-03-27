# frozen_string_literal: true

class Genre < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :movies
end
