class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(:first_name)
  end
end
