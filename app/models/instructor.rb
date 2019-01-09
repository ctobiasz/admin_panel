class Instructor < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :age,         presence: true, numericality: { less_than: 150 }
  validates :salary,      presence: true, numericality: { greater_than: 0}
  validates :education,   presence: true

  has_many :cohorts
  
  has_one_attached :avatar

  def instructor_full_name
    "#{first_name} #{last_name}"
  end
end
