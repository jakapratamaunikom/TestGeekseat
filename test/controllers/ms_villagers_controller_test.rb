require "test_helper"

class MsVillagersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ms_villagers_index_url
    assert_response :success
  end
end
