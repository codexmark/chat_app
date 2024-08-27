require "test_helper"

class ConversationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get conversations_create_url
    assert_response :success
  end

  test "should get show" do
    get conversations_show_url
    assert_response :success
  end

  test "should get destroy" do
    get conversations_destroy_url
    assert_response :success
  end
end
