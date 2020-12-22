class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :id_number, presence: true
  validates :last_name, presence: true
end
