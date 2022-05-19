require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "should have a content" do
    question = Question.new(
      content: nil,
      answers: Answer.create([
        {content: "General Kenobi", correct_answer: true},
        {content: "Darth Vador", correct_answer: false}])
    )
    assert_not question.save
  end

  test "Should have at least two answers" do
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Kenobi", correct_answer: true}])
    )
    assert_not question.save
  end

  test "Should have a max of four answers" do
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Leclerc", correct_answer: false},
        {content: "Pikachu", correct_answer: false},
        {content: "General Grievous", correct_answer: false},
        {content: "Darth Vador", correct_answer: false},
        {content: "General Kenobi", correct_answer: true}])
    )
    assert_not question.save
  end

  test "Should have at least one valid answer" do
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Grievous", correct_answer: false},
        {content: "Darth Vador", correct_answer: false}])
    )
    assert_not question.save
  end

  test "Should have only one valid answer" do
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Kenobi", correct_answer: true},
        {content: "Obi Wan", correct_answer: true}])
    )
    assert_not question.save
  end

  test "Should not have repeating answers" do
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Kenobi", correct_answer: true},
        {content: "General Kenobi", correct_answer: true}])
    )
    assert_not question.save
  end

  test "Should save with proper parameters" do
    quizz = Quizz.new(title: "test")
    question = Question.new(
      content: "Who said Hello There ?",
      answers: Answer.create([
        {content: "General Kenobi", correct_answer: true},
        {content: "Darth Vador", correct_answer: false}]),
      quizz: quizz
    )
    assert question.save
  end

end
