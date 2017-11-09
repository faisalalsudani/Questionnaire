class AddAnswersToTest < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :answers, :string, array: true, default: []
  end
end
