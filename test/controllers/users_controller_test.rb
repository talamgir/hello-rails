require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
