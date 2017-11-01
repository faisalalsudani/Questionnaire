class AddOptionToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :option, :string
  end
end
