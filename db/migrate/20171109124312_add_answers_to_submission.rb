class AddAnswersToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :answers, :string, array: true, default: []
  end
end
