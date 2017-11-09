class RemoveTimerFromQuestion < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :timer, :integer
  end
end
