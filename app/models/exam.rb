class Exam < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :tests

  accepts_nested_attributes_for :tests, allow_destroy: true

end
