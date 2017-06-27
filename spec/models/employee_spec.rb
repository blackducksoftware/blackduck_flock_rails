require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:department) }
  it { should validate_presence_of(:avatar) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:reports_to) }

  describe 'email uniqueness validation' do
    subject { FactoryGirl.build(:employee) }
    it { should validate_uniqueness_of(:email) }
  end
end
