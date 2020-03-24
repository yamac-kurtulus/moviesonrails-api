# frozen_string_literal: true

require 'test_helper'

class StarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star = stars(:one)
  end

  test 'should get index' do
    get stars_url, as: :json
    assert_response :success
  end

  test 'should show star' do
    get star_url(@star), as: :json
    assert_response :success
  end
end
