if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

if Rails.env.development? || Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:              'AWS',                        
      aws_access_key_id:     ENV['AWS_SES_ACCESS_KEY'],     
      aws_secret_access_key: ENV['AWS_SES_SECRET_ACCESS_KEY']
    }
    config.storage :fog
    config.fog_directory  = ENV['S3_BUCKET'] 
  end
end
