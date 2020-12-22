class Membership < ApplicationRecord
  belongs_to :division
  belongs_to :student
  has_many :attendances, dependent: :destroy
end
