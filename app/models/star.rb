# frozen_string_literal: true

class Star < ApplicationRecord
  has_and_belongs_to_many :user, class_name: 'User'
  has_and_belongs_to_many :movies
end
