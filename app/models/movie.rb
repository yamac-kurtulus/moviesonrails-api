# frozen_string_literal: true

class Movie < ApplicationRecord
  has_and_belongs_to_many :followed_by, class_name: 'User'
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :genres
end
