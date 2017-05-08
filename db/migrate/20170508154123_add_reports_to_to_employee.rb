class AddReportsToToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :reports_to, :string
  end
end
