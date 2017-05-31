class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :title, presence: true
  validates :department, presence: true
  validates :avatar, presence: true 
  validates :email, presence: true, uniqueness: true
  validates :reports_to, presence: true
  mount_uploader :avatar, EmployeeAvatarUploader, on: :file_name
end
