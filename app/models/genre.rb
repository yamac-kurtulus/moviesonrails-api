class Genre < ApplicationRecord
  has_and_belongs_to_many :followed_by, class_name: 'User'
  has_and_belongs_to_many :movies
  has_one :movie
end
