Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "quizzes", to: "quizzes#index"
  get "quizzes/:id/results/new", to: "results#new", as: "quizz_result"
  post "results", to: "results#create"
end
