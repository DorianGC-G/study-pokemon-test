require "test_helper"

class QuizzTest < ActiveSupport::TestCase
  test "Should not save quizz without title" do
    quizz = Quizz.new
    assert_not quizz.save
  end
end
