class Submission < ApplicationRecord
  belongs_to :user
  belongs_to :exam
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true
end
