Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "quizzes", to: "quizzes#index"
  get "quizzes/:id", to: "quizzes#show"
end
