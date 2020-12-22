class School < ApplicationRecord
  has_many :courses, dependent: :destroy

  validates :cue, presence: true
  validates :name, presence: true
end
