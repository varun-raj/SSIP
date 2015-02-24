require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get notes" do
    get :notes
    assert_response :success
  end

  test "should get classroom" do
    get :classroom
    assert_response :success
  end

  test "should get notice_board" do
    get :notice_board
    assert_response :success
  end

end
