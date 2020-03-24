require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get index' do
    get users_url, as: :json
    assert_response :success
  end

  test 'should create user' do
    skip 'later'
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, name: @user.name, password_hash: @user.password_hash } }, as: :json
    end

    assert_response 201
  end

  test 'should show user' do
    get user_url(@user), as: :json
    assert_response :success
  end

  test 'should update user' do
    patch user_url(@user), params: {
      user: {
        email: @user.email, name: @user.name, password_hash: @user.password_hash
      }
    }, as: :json
    assert_response 200
  end
end
