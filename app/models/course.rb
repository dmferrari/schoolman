class Course < ApplicationRecord
  has_many :divisions

  validates :name, presence: true
  validates :prosition, numericality: true
end
