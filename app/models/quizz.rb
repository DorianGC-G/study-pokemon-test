class Quizz < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  
  validates :title, presence: true
  validates :questions, length: { is: 5 }
end
 