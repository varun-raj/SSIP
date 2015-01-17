require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get complaint" do
    get :complaint
    assert_response :success
  end

  test "should get notes" do
    get :notes
    assert_response :success
  end

  test "should get settings" do
    get :settings
    assert_response :success
  end

end
