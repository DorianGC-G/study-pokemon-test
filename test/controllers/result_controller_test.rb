require "test_helper"

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get result_new_url
    assert_response :success
  end

  test "should get create" do
    get result_create_url
    assert_response :success
  end
end
