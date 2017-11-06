class AddAnswerToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_reference :submissions, :answer, foreign_key: true
  end
end
