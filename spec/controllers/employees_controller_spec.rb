require 'rails_helper'

RSpec.describe EmployeesController, type: :controller do
  describe 'employees route' do
    it 'should get the index page' do
      get :index
      expect(response).to be_success
      expect(response).to render_template('index')
    end

    it 'should show employees on the index page' do
      employees = FactoryGirl.create_list(:employee, 2)
      get :index
      expect(assigns(:employees)).to eq(employees)
    end
   
    it 'should create a new valid employee' do
      employee_params = FactoryGirl.attributes_for(:employee)
      expect { post :create, employee: employee_params }.to change(Employee, :count).by(1)
      should redirect_to(action: :index)
    end
  end
end
