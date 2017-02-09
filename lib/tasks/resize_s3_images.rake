desc 'create s3 image thumbnails'

task create_s3_thumbnails: :environment do
  s3 = Aws::S3::Resource.new(region: ENV['AWS_REGION'], credentials: Aws::Credentials.new(ENV["AWS_SES_ACCESS_KEY"], ENV['AWS_SES_SECRET_ACCESS_KEY']))

  tmp_folder = 'public/images'

  bucket = s3.bucket(ENV['S3_BUCKET'])

  Dir.foreach('public/images/thumb') do |f|  
    next if f == '.' or f == '..'
    image = MiniMagick::Image.open("#{tmp_folder}/#{f}")
    image.resize('122x156')
    image.format 'jpg'
    image.write "#{f}".gsub('.jpg','_thumb.jpg')
    bucket.object('key').upload_file("public/images/thumb/#{f}")
  end
end
