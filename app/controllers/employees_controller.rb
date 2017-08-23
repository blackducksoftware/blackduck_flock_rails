class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.sort_by { |e| e.name.split.last }
  end
end
