require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase

  test "should get index requires login" do
    get :index
    assert_redirected_to login_path
  end

  test "should get new requires login" do
    get :new
    assert_redirected_to login_path
  end

end
