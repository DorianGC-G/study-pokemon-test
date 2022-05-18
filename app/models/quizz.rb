class Quizz < ApplicationRecord
  has_many :questions, dependent: :delete_all
end
