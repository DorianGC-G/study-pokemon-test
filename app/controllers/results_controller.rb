class ResultsController < ApplicationController
  def new
    @result = Result.new
    @quizz = Quizz.find(params[:id])
  end

  def create
    user = current_user
    quizz = Quizz.find(params[:result][:quizz_id].to_i)
    score = calculate_score()
    @result = Result.new(user: user, quizz: quizz, score: score, passed: score >= 3)
    @result.save
    redirect_to quizzes_path
  end

  private

  def result_params
    params.require(:result).permit(:result)
  end

  def calculate_score
    score = 0
    params[:result][:questions].each { |key, value| score += 1 if value[:answer] == "true" }
    return score
  end
end
