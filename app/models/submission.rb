class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :exam, dependent: :destroy


  def score

    x = @questions

    return x

  end


end
