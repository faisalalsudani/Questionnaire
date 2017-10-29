class Question < ApplicationRecord
  belongs_to :exam

  def questions_sort
    question.sort = ["sort A", "sort B"]
  end
  
end
