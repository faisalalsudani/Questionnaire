class AddExamToTest < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :exam, foreign_key: true
  end
end
