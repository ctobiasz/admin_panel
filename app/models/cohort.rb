class Cohort < ApplicationRecord
  validates :name,  presence: true
  validates :start_date,  presence: true
  validates :end_date,  presence: true

  has_one :instructor
  has_many :students
  
end
