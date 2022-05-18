class Question < ApplicationRecord
  belongs_to :quizz
  has_many :answers, dependent: :destroy

  validates :content, presence: true
  validates_with QuestionValidator
end
