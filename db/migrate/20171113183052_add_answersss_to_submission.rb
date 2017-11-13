class AddAnswersssToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :sub_answers, :string, array: true, default: []
  end
end
