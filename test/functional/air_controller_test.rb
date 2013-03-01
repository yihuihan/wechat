require 'test_helper'

class AirControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
