class RemoveQuestionFromSubmission < ActiveRecord::Migration[5.1]
  def change
    remove_reference :submissions, :questions, foreign_key: true
  end
end
