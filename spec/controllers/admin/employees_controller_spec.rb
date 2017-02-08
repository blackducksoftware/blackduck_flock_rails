require 'rails_helper'

RSpec.describe Admin::EmployeesController, type: :controller do
  include Devise::TestHelpers

  describe 'no authentication' do
    it 'should not view the index page' do
      get :index
      should redirect_to(new_user_session_path)
    end

    it 'should not view the new page' do
      get :new 
      should redirect_to(new_user_session_path)
    end

    it 'should not view the edit page' do
      employee = FactoryGirl.create(:employee)
      get :edit, id: employee.id
      should redirect_to(new_user_session_path)
    end

    it 'should not view the show page' do
      employee = FactoryGirl.create(:employee)
      get :show, id: employee.id
      should redirect_to(new_user_session_path)
    end 
  end 

  describe 'authentication' do
    before(:each) do
      @account = FactoryGirl.create(:account)
      sign_in(@account) 
    end

    after(:each) do
      User.destroy_all
    end
 
    it 'should view the index page' do
      get :index
      expect(response).to be_success
    end

    it 'should view the new page' do
      get :new 
      expect(response).to be_success
    end

    it 'should view the edit page' do
      employee = FactoryGirl.create(:employee)
      get :edit, id: employee.id
      expect(response).to be_success
    end

    it 'should view the show page' do
      employee = FactoryGirl.create(:employee)
      get :show, id: employee.id
      expect(response).to be_success
    end 
  end
end
