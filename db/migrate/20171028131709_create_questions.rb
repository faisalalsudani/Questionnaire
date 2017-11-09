class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :photo
      t.integer :timer
      t.string :sort
      t.references :exam, foreign_key: true

      t.timestamps
    end
  end
end
