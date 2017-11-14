class Question < ApplicationRecord
  belongs_to :exam, dependent: :destroy
  # has_many :answers, dependent: :destroy
  # accepts_nested_attributes_for :answers, allow_destroy: true
end
