class Profile < ApplicationRecord
  belongs_to :user
  validates :name, presence: true

  def full_name
    "#{name}"
  end
end
