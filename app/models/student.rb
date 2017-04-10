class Student < ApplicationRecord
  self.primary_key  = "student_id"
  belongs_to :campus
  belongs_to :federal_benefit
  belongs_to :state_benefit

   has_many :student_visits
   has_many :certifiers, through: :student_visits


  validates_presence_of :student_id
  validates_presence_of :phone_number
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email

  validates_presence_of :federal_benefit
  validates_presence_of :state_benefit



  validates_uniqueness_of :student_id


  validates :student_id,
            presence: true, uniqueness: {:message => "with that StudentID# already exists in the system. Please choose Returning Visitor."}


  validates_length_of :student_id,  :maximum => 7
  validates_length_of :phone_number,  :maximum => 13

  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i
  validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
  def fullname
    "#{first_name} #{last_name}"
  end
end
