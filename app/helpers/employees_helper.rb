module EmployeesHelper
  def recently_added?(employee)
    employee.created_at < 2.weeks.ago
  end
end