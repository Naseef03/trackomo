require "test_helper"

class ExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expenses_index_url
    assert_response :success
  end

  test "should get create" do
    get expenses_create_url
    assert_response :success
  end
end
