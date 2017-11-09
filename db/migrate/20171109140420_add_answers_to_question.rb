class AddAnswersToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answers, :string, array: true, default: []
  end
end
