require "test_helper"

class AllEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_events_index_url
    assert_response :success
  end
end
