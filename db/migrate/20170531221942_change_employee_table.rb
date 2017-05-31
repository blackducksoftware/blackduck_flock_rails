class ChangeEmployeeTable < ActiveRecord::Migration
  def change
    change_column_null :employees, :title, false
    change_column_null :employees, :department, false
    change_column_null :employees, :avatar, false
    change_column_null :employees, :email, false
    change_column_null :employees, :reports_to, false
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string

    Employee.all.each do |e|
      first_name, last_name = e.name.split
      e.first_name = first_name
      e.last_name = last_name
      e.save
    end

    remove_column :employees, :name
    change_column_null :employees, :first_name, false
    change_column_null :employees, :last_name, false
  end
end
