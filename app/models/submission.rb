class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :exam, dependent: :destroy
end
