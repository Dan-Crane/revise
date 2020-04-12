require 'test_helper'

class CompromiseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compromise_index_url
    assert_response :success
  end

end
