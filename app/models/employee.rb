class Employee < ActiveRecord::Base
#  validates :name, presence: true
#  validates :title, presence: true
#  validates :department, presence: true
#  validates :avatar, presence: true 
#  validates :email, presence: true
  mount_uploader :avatar, EmployeeAvatarUploader, on: :file_name
end
