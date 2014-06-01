require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { auth_token: @user.auth_token, confirmation_token: @user.confirmation_token, email: @user.email, first_name: @user.first_name, is_confirmed: @user.is_confirmed, last_name: @user.last_name, password_hash: @user.password_hash, password_reset_sent_at: @user.password_reset_sent_at, password_reset_token: @user.password_reset_token, password_salt: @user.password_salt, role: @user.role, send_emails: @user.send_emails }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { auth_token: @user.auth_token, confirmation_token: @user.confirmation_token, email: @user.email, first_name: @user.first_name, is_confirmed: @user.is_confirmed, last_name: @user.last_name, password_hash: @user.password_hash, password_reset_sent_at: @user.password_reset_sent_at, password_reset_token: @user.password_reset_token, password_salt: @user.password_salt, role: @user.role, send_emails: @user.send_emails }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
