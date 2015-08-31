require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user owns place?" do
    user = FactoryGirl.create(:user)
    place = Place.create( :name => "Place", :description => "super", :latitude => 42.3535353,
    :longitude => -71.056098, :user_id => 2)
    assert_equal user.id, place.user_id
  end
end
