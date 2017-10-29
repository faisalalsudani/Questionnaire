class AddSortToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :sort, :string, array: true, default: [], using:"(string_to_array(sort, ','))"
  end
end
