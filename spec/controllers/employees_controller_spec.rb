require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do
  describe 'employees route' do
    it 'should get the index page' do
      get :index
      expect(response).to be_success
      expect(response).to render_template('index')
    end

    it 'should sort employees by last name and display on index' do
      list_of_employees = []
      list_of_employees << FactoryGirl.create(:employee)
      list_of_employees << FactoryGirl.create(:employee, name: 'Daniel Abraham')
      list_of_employees << FactoryGirl.create(:employee, name: 'Daniel Sanchez')
      list_of_employees << FactoryGirl.create(:employee, name: 'Daniel Diego')
      get :index
      expect(assigns(:employees)).to eq(list_of_employees.sort_by { |e| e.name.split.last }.reverse)
    end
  end
end
