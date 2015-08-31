require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "humanized rating" do
    comment = Comment.new(:rating => '1_star')
    assert_equal 'One Star', comment.humanized_rating
  end
end
