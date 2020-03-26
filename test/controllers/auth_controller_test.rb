require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acceptUser = users(:alice)
    User.create(:alice)

    @rejectUser = users(:bob)

  end
  
  test "should get login" do
    get auth_login_url
    assert_response :success
  end

  test "should get logout" do
    get auth_logout_url
    assert_response :success
  end

  test "should get register" do
    post auth_register_url
    assert_response :success
  end

end
