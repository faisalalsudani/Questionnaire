class AddAnnToSubmission < ActiveRecord::Migration[5.1]
  def change
    enable_extension "hstore"
    add_column :submissions, :ann, :hstore, default: {}, null: false
  end
end
