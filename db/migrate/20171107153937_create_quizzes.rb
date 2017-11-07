class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
