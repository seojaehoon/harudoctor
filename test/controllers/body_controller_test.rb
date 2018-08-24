require 'test_helper'

class BodyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get body_index_url
    assert_response :success
  end

end
