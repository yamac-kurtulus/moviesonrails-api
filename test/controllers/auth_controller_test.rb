require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acceptUser = users(:truth)
  end

  test 'should allow logins with an authenticated user' do
    post auth_login_url, params: { user:
                                  {
                                    email: 'truth@outthere.com',
                                    password: 'truthPassword'
                                  } }, as: :json

    assert_response :success
    assert_includes response.body, 'token', 'user_id'
  end

  test 'should not allow logins with an unauthenticated user' do
    post auth_login_url, params: { user:
      {
        email: 'asd@asd.com',
        password: 'asd'
      } }, as: :json
    assert_response :unauthorized
    assert_includes response.body, 'Sorry, incorrect username or password'
  end

  test 'should post to register' do
    assert_difference('User.count', 1) do
      post auth_register_url, params: {
        user: {
          name: 'register',
          password: '1234',
          email: 'register@login.com'
        }
      }
      assert_response :created
    end
  end
end
