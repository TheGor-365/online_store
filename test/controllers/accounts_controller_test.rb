require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get accounts_profile_url
    assert_response :success
  end

end
