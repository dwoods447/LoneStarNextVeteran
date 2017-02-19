class Certifier < ApplicationRecord
  self.primary_key = "certifier_id"

  has_many :student_visits
  has_many :students, through: :student_visits
  #attr_accessible :avatar
  mount_uploader :avatar, AvatarUploader

  def set_fullname
    "#{first_name}" " #{last_name}"
  end
end
