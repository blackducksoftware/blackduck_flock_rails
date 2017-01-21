class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :department
      t.string :team
      t.string :avatar
      t.timestamps null: false
    end
  end
end
