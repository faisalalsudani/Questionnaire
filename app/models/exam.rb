class Exam < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :submitions
end
