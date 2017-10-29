class ChangeTimerInQuestion < ActiveRecord::Migration[5.1]
  def change
    change_column :questions, :timer, :integer
  end
end
