require 'rails_helper'

RSpec.describe Employee, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:department) }
  it { should validate_presence_of(:avatar) }
  it { should validate_presence_of(:team) }
end
