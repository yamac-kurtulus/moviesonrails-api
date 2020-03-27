# frozen_string_literal: true

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  def setup
    @empty_movie = Movie.new
    @one = movies(:one)
  end

  test 'should have title' do
    @empty_movie.valid?
    assert_includes(@empty_movie.errors[:title], "can't be blank")
  end

  test 'should have imdb_id' do
    @empty_movie.valid?
    assert_includes(@empty_movie.errors[:imdb_id], "can't be blank")
  end

  test 'should have unique title' do
    new_movie = movies(:two)
    new_movie.valid?
    assert_includes(new_movie.errors[:title], 'has already been taken')
  end

  test 'should have unique imdb id' do
    new_movie = movies(:two)
    new_movie.valid?
    assert_includes(new_movie.errors[:imdb_id], 'has already been taken')
  end
end
