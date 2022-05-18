class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.belongs_to :quizz
      
      t.timestamps
    end
  end
end
