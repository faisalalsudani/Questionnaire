class Exam < ApplicationRecord
  has_many :questions, dependent: :destroy
end
