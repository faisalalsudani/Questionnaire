class Exam < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_and_belongs_to_many :users

  has_many :attempts, dependent: :destroy
end
