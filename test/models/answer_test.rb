require "test_helper"

class AnswerTest < ActiveSupport::TestCase
  test "Should have a content" do
    answer = Answer.new
    assert_not answer.save
  end
end
