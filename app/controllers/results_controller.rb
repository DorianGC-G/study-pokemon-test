class ResultsController < ApplicationController
  def new
    @result = Result.new
    @quizz = Quizz.find(params[:id])
  end

  def create
    raise
  end

  private

  def result_params
    params.require(:result).permit()
  end
end
