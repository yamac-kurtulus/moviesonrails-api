# frozen_string_literal: true

require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  def setup
    @empty = Genre.new
    @genre = build (:genre)
  end

  test 'should have name' do
    @empty.valid?
    assert_includes(@empty.errors[:name], "can't be blank")
  end

  test 'should have movie' do
    @empty.valid?
    assert_includes(@empty.errors[:movies], "can't be blank")
  end

  test 'should be generated by factory' do
    genre = build(:genre)
    assert genre.valid?
  end
end
