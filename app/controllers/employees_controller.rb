class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.page(params[:page]).per(
24)
  end
end
