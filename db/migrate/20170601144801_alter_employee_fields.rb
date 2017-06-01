class AlterEmployeeFields < ActiveRecord::Migration
  def change
    change_column_null :employees, :title, false
    change_column_null :employees, :department, false
    change_column_null :employees, :avatar, false
    change_column_null :employees, :email, false
    change_column_null :employees, :reports_to, false
    add_column :employees, :last_name, :string
    remove_column :employees, :s3_image
  end
end
