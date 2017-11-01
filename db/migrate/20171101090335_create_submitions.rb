class CreateSubmitions < ActiveRecord::Migration[5.1]
  def change
    create_table :submitions do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
