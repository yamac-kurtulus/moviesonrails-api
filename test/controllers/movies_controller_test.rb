# frozen_string_literal: true

require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test 'should get index' do
    get movies_url, as: :json
    assert_response :success
  end

  test 'should show movie' do
    get movie_url(@movie), as: :json
    assert_response :success
  end
end
