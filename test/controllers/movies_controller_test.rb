# frozen_string_literal: true

require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test 'should get index' do
    skip
    get movies_url, as: :json
    assert_response :success
  end

  test 'should show movie' do
    skip
    get movie_url(@movie), as: :json
    assert_response :success
  end

  test "can be followed by user" do
    skip
    movie = create(:movie_with_genres_stars)
    puts movie.genres.to_json
    patch f_movie_url, params: JSON(movie), headers: { "Authorization": @token }
    puts @movie.followed_by.to_json
    assert_includes @movie.followed_by, @user
  end

end
