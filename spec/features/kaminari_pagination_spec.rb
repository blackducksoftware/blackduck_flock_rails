require 'rails_helper'

describe 'pagination' do
  it 'should show the pagination div above 24 count' do
    employees = FactoryGirl.create_list(:employee, 50)
    visit '/employees'
    expect(page).to have_selector('nav.pagination')
  end

  it 'should not show pagination links if employee count is below 24' do
    employees = FactoryGirl.create_list(:employee, 10)
    visit '/employees'
    expect(page).to have_no_selector('nav.pagination')
  end
end

