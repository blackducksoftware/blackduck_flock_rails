class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(:last_name)
  end
end
