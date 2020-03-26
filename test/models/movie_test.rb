# frozen_string_literal: true

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
test "hebeleee" do
    Movie.all.each do |star|
        puts star.to_json
    end
end
end
