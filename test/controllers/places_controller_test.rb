require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "create" do
  user = FactoryGirl.create(:user)
  sign_in user

  assert_difference 'Place.count' do
    post :create, {:place => {
        :name => 'Food',
        :description => 'Best food ever',
        :address => '31 northridge st.'
      }
    }
  end
  assert_redirected_to places_path

  assert_equal 1, user.places.count
end

  test "user not signed in - create" do
    assert_no_difference 'Place.count' do
      post :create, {:place => {
          :name => 'Food',
          :description => 'Best food ever',
          :latitude => 49.3635559,
          :longitude => -69.044398
        }
      }
    end
    assert_redirected_to new_user_session_path

    assert_equal 0, Place.count
  end

end
