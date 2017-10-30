class RemoveAnswersFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :answers, :string
  end
end
