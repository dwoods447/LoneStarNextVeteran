class Certifier < ApplicationRecord
  self.primary_key = "certifier_id"

  has_many :student_visits
  has_many :students, through: :student_visits
  #attr_accessible :avatar
  mount_uploader :avatar, AvatarUploader



  validates_presence_of :certifier_id
  validates_presence_of :first_name
  validates_presence_of :last_name

  def set_fullname
    "#{first_name}" " #{last_name}"
  end
end
