class QuizzesController < ApplicationController
  def index
    @quizzes = Quizz.all
  end

  def show
    @quizz = Quizz.find(params[:id])
  end
end
