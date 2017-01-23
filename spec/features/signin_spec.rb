require 'rails_helper'

describe 'admin user signin proceess' do

  #Todo: Add flash notifications for these tests

  it 'signs in an existing user admin account' do
    account = FactoryGirl.create(:account)
    visit '/users/sign_in'
    within(".form-inputs") do
      fill_in "Email", with: account.email 
      fill_in 'Password', with: account.password 
    end
    click_button 'Log in'
    expect(page).to have_content 'Sign Out'
    expect(page).to have_content 'Admin Dashboard'
    expect(page).to_not have_content 'Admin Sign In'
  end

  it 'allows an admin account to logout' do 
    account =  FactoryGirl.create(:account)
    login_as(account, scope: :user)
    visit '/'
    click_link 'Sign Out'
    expect(page).to have_content 'Admin Sign In' 
  end
end

