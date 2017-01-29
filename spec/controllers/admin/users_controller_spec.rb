require 'rails_helper'

RSpec.describe Admin::UsersController, type: :controller do
  describe 'admin users' do
    it 'should view the index page' do
      get :index
      should redirect_to(new_user_session_path)
    end

    it 'should view the new page' do
      get :new 
      should redirect_to(new_user_session_path)
    end

    it 'should view the edit page' do
      user = FactoryGirl.create(:account)
      get :edit, id: user.id
      should redirect_to(new_user_session_path)
    end

    it 'should view the show page' do
      user = FactoryGirl.create(:account)
      get :show, id: user.id
      should redirect_to(new_user_session_path)
    end 
  end 

  describe 'admin users' do
    before(:each) do
      account = FactoryGirl.create(:account)
      login_as(account, scope: :user) 
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
      user = FactoryGirl.create(:account)
      get :edit, id: user.id
      expect(response).to be_success
    end

    it 'should view the show page' do
      user = FactoryGirl.create(:account)
      get :show, id: user.id
      expect(response).to be_success
    end 
  end
end
