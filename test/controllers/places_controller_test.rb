require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "user not signed in - create" do
    assert_no_difference 'Place.count' do
      post :create, {:place => {
          :name => 'yolo',
          :description => 'omg',
          :latitude => 42.3631519,
          :longitude => -71.056098
        }
      }
    end
    assert_redirected_to new_user_session_path

    assert_equal 0, Place.count
  end

end
