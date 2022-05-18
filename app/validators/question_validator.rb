class QuestionValidator < ActiveModel::Validator
  def validate(record)

    # may only have 1 right answer
    if record.answers.count {|a| a.correct_answer} > 1
        record.errors[:question] << "A question may only have 1 correct answer!"
    end

    # requires 1 correct answer
    if record.answers.none? {|a| a.correct_answer}
        record.errors[:question] << "A question must have a correct answer!"
    end

    # answers must be unique
    if !!record.answers.collect {|a| a.content}.uniq!
        record.errors[:question] << "A question cannot have duplicate answers."
    end
    
    # question is unique for a given quiz
    if record.quiz.questions.any? {|q| q.content == record.content }
        record.errors[:question] << "This question has already been added to this quiz."
    end

  end
end