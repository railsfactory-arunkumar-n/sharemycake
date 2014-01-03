require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get event" do
    get :event
    assert_response :success
  end

  test "should get org" do
    get :org
    assert_response :success
  end

end
