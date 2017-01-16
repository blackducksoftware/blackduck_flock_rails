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
   
    it 'should get the employees new page' do
      get :new
      expect(response).to be_success
      expect(response).to render_template('new')
    end 
   
    it 'should create a new valid employee' do
      employee_params = FactoryGirl.attributes_for(:employee)
      expect { post :create, employee: employee_params }.to change(Employee, :count).by(1)
      should redirect_to(action: :index)
    end

    it 'should not create a valid employee with blank parameters' do
      post :create, employee: { first_name: '', last_name: '', title: '' }
      should render_template('new')
      expect(Employee.count).to eq(j)
    end
  end
end
