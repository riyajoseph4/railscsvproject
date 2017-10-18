require 'test_helper'

class CsvsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get csvs_new_url
    assert_response :success
  end

end
