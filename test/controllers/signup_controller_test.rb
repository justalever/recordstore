require 'test_helper'

class SignupControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get signup_create_url
    assert_response :success
  end

end
