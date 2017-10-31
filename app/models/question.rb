class Question < ApplicationRecord
  belongs_to :exam
  has_many :answers, dependent: :destroy
  has_many :attempts, dependent: :destroy
  accepts_nested_attributes_for :answers, allow_destroy: true
end
