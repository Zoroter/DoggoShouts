require 'test_helper'


class PagesControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    test "no access if not signed in" do
        get root_path
        assert_response :redirect
    end

    test "user with no login should be redirected to set his username" do
        sign_in users(:no_username_user)
        get root_path
        assert_response :redirect
    end

  
end
