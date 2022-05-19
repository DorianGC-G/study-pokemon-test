class Question < ApplicationRecord
  belongs_to :quizz
  has_many :answers, dependent: :destroy

  validates :content, presence: true
  validates :answers, length: { minimum: 2, maximum: 4 }

  validates_with QuestionValidator
end
