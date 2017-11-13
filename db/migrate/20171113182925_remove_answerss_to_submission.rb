class RemoveAnswerssToSubmission < ActiveRecord::Migration[5.1]
  def change
    remove_column :submissions, :sub_answers, :string
  end
end
