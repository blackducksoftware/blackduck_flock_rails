class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.order(:name)
  end
end
