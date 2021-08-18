require "test_helper"

class SalasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salas_index_url
    assert_response :success
  end
end
