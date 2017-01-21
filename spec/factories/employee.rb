FactoryGirl.define do
  factory :employee do
    first_name "Daniel"
    last_name "Rubio"
    title "Software Engineer"
    department "Engineering"
    team "OpenHub"
    avatar Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/photos/duck.png')))
 
  end

  factory :employee_with_jpg_avatar, parent: :employee do  
    avatar Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/photos/duck.jpg')))
  end
 
  factory :employee_with_jpeg_avatar, parent: :employee do
    avatar Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/photos/duck.jpeg')))
  end
  
  factory :employee_with_txt_avatar, parent: :employee do
    avatar Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/photos/duck.txt')))
  end
end
