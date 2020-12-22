class Course < ApplicationRecord
  belongs_to :school
  has_many :divisions, dependent: :destroy

  validates :name, presence: true
  validates :position, numericality: true
end
