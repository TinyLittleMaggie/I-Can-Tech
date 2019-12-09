class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :user_answer
      t.boolean :is_right
      t.references :step, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
