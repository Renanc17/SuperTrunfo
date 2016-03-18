require 'test_helper'

class PlaysControllerTest < ActionController::TestCase
  test "should get your_turn" do
    get :your_turn
    assert_response :success
  end

  test "should get cpu_turn" do
    get :cpu_turn
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get start_game" do
    get :start_game
    assert_response :success
  end

end
