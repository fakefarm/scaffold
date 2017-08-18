require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "GET index" do
    get users_url
    assert_response :success
  end

  test "GET new" do
    get new_user_url
    assert_response :success
  end

  test "POST create" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "GET show" do
    get user_url(@user)
    assert_response :success
  end

  test "GET edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "PATCh update" do
    patch user_url(@user), params: { user: { email: @user.email, first_name: @user.first_name, last_name: @user.last_name } }
    assert_redirected_to user_url(@user)
  end

  test "DELETE destroy" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
