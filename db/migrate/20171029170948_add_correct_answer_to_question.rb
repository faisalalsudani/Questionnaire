class AddCorrectAnswerToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :correct_answer, :integer
  end
end
