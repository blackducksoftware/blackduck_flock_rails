require 'rails_helper'

describe 'admin user signin/signout process' do

  it 'signs in an existing user admin account' do
    account = FactoryGirl.create(:account)
    visit '/users/sign_in'
    
    fill_in "user_email", with: account.email 
    
    
    fill_in 'user_password', with: account.password 
    
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

  it 'should not allow an unauthenticated user to view the admin page' do
    visit '/admin'
    expect(page).to have_content 'Log in'
  end 
end

