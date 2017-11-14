class AddAnsToSubmission < ActiveRecord::Migration[5.1]
  def change
    add_column :submissions, :ans, :hstore, default: {}, null: false
  end
end
