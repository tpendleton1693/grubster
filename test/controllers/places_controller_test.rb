require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "create not signed in" do
    assert_no_difference 'Place.count' do
    post :create, {:place => {
          :name => 'yolo',
          :description => 'omg',
          :latitude => 42.3535353,
          :longitude => -71.056098
          }
        }
      end
    assert_redirected_to new_user_session_path
  end

end
