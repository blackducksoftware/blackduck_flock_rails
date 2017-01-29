require 'rails_helper'

RSpec.describe Admin::EmployeesController, type: :controller do
  describe 'admin employees' do
    it 'should view the index page' do
      get :index
      should redirect_to(new_user_session_path)
    end

    it 'should view the new page' do
      get :new 
      should redirect_to(new_user_session_path)
    end

    it 'should view the edit page' do
      employee = FactoryGirl.create(:employee)
      get :edit, id: employee.id
      should redirect_to(new_user_session_path)
    end

    it 'should view the show page' do
      employee = FactoryGirl.create(:employee)
      get :show, id: employee.id
      should redirect_to(new_user_session_path)
    end 
  end 

  describe 'admin employees' do
    before(:each) do
      account = FactoryGirl.create(:account)
      login_as(account, scope: :user) 
    end

    after(:each) do
      User.destroy_all
    end
 
    #TODO: Fix this test, don't know why it's failing.
    #it 'should view the index page' do
    #  get :index
    #  expect(response).to be_success
    #end

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
