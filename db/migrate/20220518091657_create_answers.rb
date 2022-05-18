class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.boolean :correct_answer
      t.string :content
      t.belongs_to :question
      
      t.timestamps
    end
  end
end
