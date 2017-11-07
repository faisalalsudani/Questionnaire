class CreateTakeExams < ActiveRecord::Migration[5.1]
  def change
    create_table :take_exams do |t|
      t.references :user, foreign_key: true
      t.references :exam, foreign_key: true
      t.string :answers, :string, array: true, default: [], using:"(string_to_array(answers, ','))"

      t.timestamps
    end
  end
end
