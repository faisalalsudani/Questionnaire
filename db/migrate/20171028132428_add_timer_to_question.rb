class AddTimerToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :timer, :boolean
  end
end
