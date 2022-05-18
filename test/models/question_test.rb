require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "should have a content" do
    question = Question.new
    assert_not question.save
  end
end
