class RemoveEmployeeLastNameField < ActiveRecord::Migration
  def up
    remove_column :employees, :last_name
  end

  def down
    add_column :employees, :last_name, :string
  end
end
