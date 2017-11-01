class RemoveOptionFromSubmission < ActiveRecord::Migration[5.1]
  def change
    remove_column :submissions, :option, :string
  end
end
