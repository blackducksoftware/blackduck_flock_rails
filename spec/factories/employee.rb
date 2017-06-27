FactoryGirl.define do
  factory :employee do
    name "Daniel Rubio"
    title "Software Engineer"
    department "Engineering"
    team "OpenHub"
    sequence(:email) { |n| "email#{n}@gmail.com" }
    reports_to "Daniel Rubio"
    last_name ''
    avatar Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/fixtures/photos/duck.png')))

    before(:create) { |employee| employee.last_name = employee.name.split.last } 
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
