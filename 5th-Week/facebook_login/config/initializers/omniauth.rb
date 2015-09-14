OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['428612450605326'], ENV['813ed6b772f90133354a75345021956a']
end