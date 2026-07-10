require "test_helper"

class CoinDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get coin_details_show_url
    assert_response :success
  end
end
