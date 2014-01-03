require 'test_helper'

class InvitationControllerTest < ActionController::TestCase
  test "should get myevent" do
    get :myevent
    assert_response :success
  end

  test "should get dash_board" do
    get :dash_board
    assert_response :success
  end

  test "should get create_event" do
    get :create_event
    assert_response :success
  end

end
