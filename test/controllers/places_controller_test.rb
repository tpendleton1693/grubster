require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do
    user = FactoryGirl.create(:user)
    sign_in user

    assert_difference 'Place.count' do
      post :create, {
        :place => {
          :name => 'Food',
          :description => 'Best food ever',
          :address => 'New York, NY',
          :latitude => 40.7127,
          :longitude => -74.0059
        }
      }
    end
    assert_redirected_to places_path
  end

  test "user not signed in - create" do
    assert_no_difference 'Place.count' do
      post :create, {:place => {
          :name => 'Food',
          :description => 'Best food ever',
          :latitude => 40.7127,
          :longitude => -74.0059
        }
      }
    end
    assert_redirected_to new_user_session_path
  end

end
