require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index and return hello message" do
    get hello_url
    assert_response :success
    json_response = JSON.parse(@response.body)
    assert_equal "Hello", json_response["message"]
  end
end
