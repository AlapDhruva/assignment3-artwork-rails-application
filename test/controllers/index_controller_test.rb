require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get details" do
    get index_details_url
    assert_response :success
  end
end
