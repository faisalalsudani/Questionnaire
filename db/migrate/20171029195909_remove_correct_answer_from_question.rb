class RemoveCorrectAnswerFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :correct_answer, :integer
  end
end
