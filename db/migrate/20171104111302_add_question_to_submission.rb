class AddQuestionToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_reference :submissions, :question, foreign_key: true
  end
end
