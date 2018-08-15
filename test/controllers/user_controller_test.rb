require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get user_signup_url
    assert_response :success
  end

  test "should get signin" do
    get user_signin_url
    assert_response :success
  end

  test "should get signout" do
    get user_signout_url
    assert_response :success
  end

  test "should get mypage" do
    get user_mypage_url
    assert_response :success
  end

  test "should get reset" do
    get user_reset_url
    assert_response :success
  end

  test "should get main" do
    get user_main_url
    assert_response :success
  end

end
