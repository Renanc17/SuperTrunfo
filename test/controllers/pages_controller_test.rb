require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get play" do
    get :play
    assert_response :success
  end

  test "should get newCarta" do
    get :newCarta
    assert_response :success
  end

end
