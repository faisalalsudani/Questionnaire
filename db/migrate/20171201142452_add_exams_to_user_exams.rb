class AddExamsToUserExams < ActiveRecord::Migration[5.1]
  def change
    add_column :user_exams, :exams, :string, array: true, default: []
  end
end
