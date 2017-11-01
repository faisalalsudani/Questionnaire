class AddTitleToSubmition < ActiveRecord::Migration[5.1]
  def change
    add_column :submitions, :title, :string
  end
end
