class CreateAttempts < ActiveRecord::Migration[5.1]
  def change
    create_table :attempts do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true
      t.integer :att_num

      t.timestamps
    end
  end
end
