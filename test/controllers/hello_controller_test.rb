require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hello_url
    assert_response :success
    assert_select "h1", "Hello"
  end
end
