class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.boolean :passed
      t.integer :score
      t.belongs_to :quizz
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
