class Quizz < ApplicationRecord
  has_many :questions, dependent: :delete_all
  has_many :results, dependent: :delete_all
  
  validates :title, presence: true
end
 