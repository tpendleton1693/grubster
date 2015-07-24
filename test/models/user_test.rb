require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "user owns place?" do
    user = User.create( :email => 'tyler@gmail.com', :password => 'password', :admin => false)
    place = Place.create( :name => "Place", :description => "super", :latitude => 42.3535353,
    :longitude => -71.056098, :user_id => 1)
    assert user.owns?(place)
  end
end
