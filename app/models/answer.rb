class Answer < ApplicationRecord
  belongs_to :question
  has_many :submissions
  has_many :options
  accepts_nested_attributes_for :options, allow_destroy: true

end
