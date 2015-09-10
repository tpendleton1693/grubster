require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  test "comment added test" do
    user = FactoryGirl.create(:user)
    sign_in user

    place = FactoryGirl.create(:place)
    assert_difference "Comment.count" do
      post :create, :place_id => place.id, :comment => {
          :message => "Wow it is so good",
          :rating => "3_stars",
        }
    end
    assert_redirected_to place_path(place)
  end

end
