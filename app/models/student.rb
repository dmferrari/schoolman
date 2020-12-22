class Student < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :id_number, presence: true
end
