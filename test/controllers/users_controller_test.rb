require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test "User Dashboard Test" do
    user = FactoryGirl.create(:user)
    sign_in user

    get :show, :id => user.id
    assert_response :success
  end

end
