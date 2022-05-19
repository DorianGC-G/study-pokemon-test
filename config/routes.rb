Rails.application.routes.draw do
  devise_for :users

  # Set dashboard as the main page
  root to: "pages#dashboard"

  # Display all quizzes
  get "quizzes", to: "quizzes#index"

  # Routes to answer the chosen quizz
  get "quizzes/:id/results/new", to: "results#new", as: "quizz_result"
  post "results", to: "results#create"

  # Display the results of the quizz you just did
  get "results/:id", to: "results#show", as: "result_show"

end
