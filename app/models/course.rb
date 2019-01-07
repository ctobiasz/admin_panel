class Course < ApplicationRecord
  validates :name,  presence: true
  validates :hours, presence: true

  has_many :cohorts
  belongs_to :admin
  
end
