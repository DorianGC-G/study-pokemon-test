class PagesController < ApplicationController

  # Displaying user stats using his results
  def dashboard
    @user = current_user
    @results = Result.where(user: current_user)
    @total_score = display_total_score(@results)
    @total_wins = @results.where(passed: true).count
  end

  private

  # Simple method to calculate all good answer in every quizz
  def display_total_score(results)
    total_score = 0
    results.each { |r| total_score += r.score }
    return total_score
  end
end
