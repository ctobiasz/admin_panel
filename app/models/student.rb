class Student < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :age,         presence: true
  validates :education,   presence: true

  belongs_to :cohort, optional: true

  def student_full_name
    "#{first_name} #{last_name}"
  end
end
