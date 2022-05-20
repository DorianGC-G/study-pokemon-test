class ResultsController < ApplicationController
  def new
    @result = Result.new
    @quizz = Quizz.find(params[:id])
  end

  # The results are created using the params passed in the form in results/new view
  def create
    user = current_user
    quizz = Quizz.find(params[:result][:quizz_id].to_i)
    score = calculate_score()
    @result = Result.new(user: user, quizz: quizz, score: score, passed: score >= 3)
    @result.save
    redirect_to result_show_path(@result)
  end

  def show
    @result = Result.find(params[:id])
  end

  private

  def result_params
    params.require(:result).permit(:result)
  end

  # The score is calculated based on the correct answers passed in the form
  def calculate_score
    score = 0
    params[:result][:questions].each { |key, value| score += 1 if value[:answer] == "true" }
    return score
  end
end
