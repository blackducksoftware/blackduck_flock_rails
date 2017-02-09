desc 'Populate database with employee s3 photos'
task migrate_s3_photos_to_db: :environment do
  s3 = Aws::S3::Resource.new(region: ENV['AWS_REGION'], credentials: Aws::Credentials.new(ENV["AWS_SES_ACCESS_KEY"], ENV['AWS_SES_SECRET_ACCESS_KEY']))
  s3.bucket(ENV['S3_BUCKET']).objects.each do |employee|
    name = employee.public_url.gsub("https://blackduckflock-employees.s3.amazonaws.com/thumb/", " ").gsub('_thumb.jpg', '').gsub('_',' ')
    email = "#{name.scan(/\w+/)[0][0].downcase}" + "#{name.scan(/\w+/)[1].downcase}" + "@blackducksoftware.com"
    Employee.create(name: name, email: email, s3_image: employee.public_url)
  end
end
