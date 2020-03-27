require 'test_helper'

class MeControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:valid)
    post auth_login_url, params: { user:
      {
        email: @user.email,
        password: @user.password
      } }, as: :json
    @token = JSON.parse(@response.body) ['token']
    @movie = movies(:one)
  end

  test "should not post follow when not logged in" do
    post me_follow_url headers: { "Authorization" => @token }
    assert_response :unauthorized
  end

  test "should not get suggestions when not logged in" do
    get me_suggest_url
    assert_response :unauthorized
  end

  test "should follow movie" do
    post me_follow_url, params: @movie.id.to_s, headers: { "Authorization": @token }
    puts @movie.followed_by.to_json
    assert_includes @movie.followed_by, @user
  end
end
