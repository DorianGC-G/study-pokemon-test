require "test_helper"

class QuizzTest < ActiveSupport::TestCase
  test "Should not save quizz without title" do
    quizz = Quizz.create(title: nil)
    assert_not quizz.save
  end

  test "Should have a maximum of five questions" do
    quizz = Quizz.new(
      title: "test"
    )
    questions_quizz = Question.create([
      {content: "Bulbasaur usualy lives in grassland", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: true},
        {content: "False", correct_answer: false}])
      },
      {content: "Pikachu usualy lives in america", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: false},
        {content: "False", correct_answer: true}])
      },
      {content: "Squirtle usualy lives in mountain", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: false},
        {content: "False", correct_answer: true}])
      },
      {content: "Charmander usualy lives in borneo", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: true},
        {content: "False", correct_answer: false}])
      },
      {content: "Eevee usualy lives in paris", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: true},
        {content: "False", correct_answer: false}])
      },
      {content: "Psykokwak usualy lives in mexico", quizz: quizz, answers: Answer.create([
        {content: "True", correct_answer: true},
        {content: "False", correct_answer: false}])
      }
    ])
    assert_not quizz.save
  end

  test "Should save quizz with proper parameters" do
    quizz = Quizz.create(
      title: "test",
      questions: Question.create([
        {content: "Bulbasaur usualy lives in grassland", quizz: quizz, answers: Answer.create([
          {content: "True", correct_answer: true},
          {content: "False", correct_answer: false}])
        },
        {content: "Pikachu usualy lives in america", quizz: quizz, answers: Answer.create([
          {content: "True", correct_answer: false},
          {content: "False", correct_answer: true}])
        },
        {content: "Squirtle usualy lives in mountain", quizz: quizz, answers: Answer.create([
          {content: "True", correct_answer: false},
          {content: "False", correct_answer: true}])
        },
        {content: "Charmander usualy lives in borneo", quizz: quizz, answers: Answer.create([
          {content: "True", correct_answer: true},
          {content: "False", correct_answer: false}])
        },
        {content: "Eevee usualy lives in paris", quizz: quizz, answers: Answer.create([
          {content: "True", correct_answer: true},
          {content: "False", correct_answer: false}])
        }
      ])
    )
    assert quizz.save
  end
  
end
