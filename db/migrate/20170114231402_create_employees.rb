class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :department
      t.string :team
      t.string :avatar
      t.string :s3_image
      t.timestamps null: false
    end
  end
end
