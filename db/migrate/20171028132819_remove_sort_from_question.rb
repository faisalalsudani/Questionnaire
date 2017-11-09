class RemoveSortFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :sort, :string
  end
end
