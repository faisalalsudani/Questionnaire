class RemoveStringFromTakeExam < ActiveRecord::Migration[5.1]
  def change
    remove_column :take_exams, :string, :string
  end
end
