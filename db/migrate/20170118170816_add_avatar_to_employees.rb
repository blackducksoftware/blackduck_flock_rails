class AddAvatarToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :avatar, :string, null: false
  end
end
