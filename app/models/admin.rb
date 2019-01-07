class Admin < ApplicationRecord
  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :email,       presence: true, uniqueness: true, :uniqueness => { :case_sensitive => false }
  validates :password,    presence: true


  has_many :students
  has_many :instructors
  has_many :cohorts
  has_many :courses

end
