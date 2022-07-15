require "test_helper"

class SchdlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get schdl_index_url
    assert_response :success
  end
end
