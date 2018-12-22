class Instructor < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :age,         presence: true
  validates :salary,      presence: true
  validates :education,   presence: true

  has_many :cohorts

  def instructor_full_name
    "#{first_name} #{last_name}"
  end
end
