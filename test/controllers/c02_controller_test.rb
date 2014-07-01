require 'test_helper'

class C02ControllerTest < ActionController::TestCase
  test "should get introduccion" do
    get :introduccion
    assert_response :success
  end

end
