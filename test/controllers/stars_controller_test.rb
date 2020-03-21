require 'test_helper'

class StarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @star = stars(:one)
  end

  test "should get index" do
    get stars_url, as: :json
    assert_response :success
  end

  test "should create star" do
    assert_difference('Star.count') do
      post stars_url, params: { star: { name: @star.name } }, as: :json
    end

    assert_response 201
  end

  test "should show star" do
    get star_url(@star), as: :json
    assert_response :success
  end

  test "should update star" do
    patch star_url(@star), params: { star: { name: @star.name } }, as: :json
    assert_response 200
  end

  test "should destroy star" do
    assert_difference('Star.count', -1) do
      delete star_url(@star), as: :json
    end

    assert_response 204
  end
end
