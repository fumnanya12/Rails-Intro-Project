require "test_helper"

class TrendingCoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trending_coins_index_url
    assert_response :success
  end
end
