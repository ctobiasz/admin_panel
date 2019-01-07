class Cohort < ApplicationRecord
  validates :name,  presence: true
  validates :start_date,  presence: true
  validates :end_date,  presence: true

  belongs_to :instructor
  belongs_to :admin

  has_and_belongs_to_many :students

end
