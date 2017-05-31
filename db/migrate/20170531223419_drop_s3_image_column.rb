class DropS3ImageColumn < ActiveRecord::Migration
  def change
    remove_column :employees, :s3_image
  end
end
