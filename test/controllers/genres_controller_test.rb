# frozen_string_literal: true

require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genre = genres(:one)
  end

  test 'should get index' do
    get genres_url, as: :json
    assert_response :success
  end

  test 'should show genre' do
    get genre_url(@genre), as: :json
    assert_response :success
  end
end
