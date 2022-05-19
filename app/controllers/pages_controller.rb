class PagesController < ApplicationController
  def dashboard
    @user = current_user
    @results = Result.where(user: current_user)
    @total_score = display_total_score(@results)
  end

  private

  def display_total_score(results)
    total_score = 0
    results.each {|r| total_score += r.score}
    return total_score
  end
end
