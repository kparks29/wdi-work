OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '576012748795-798p8gdgd12f26ho8s784e243cc3qiao.apps.googleusercontent.com', 'tnhJaJXyu_zIFMKM6gKYnAna', 
  {
  	client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}




  }

  provider :facebook, '428612450605326', '813ed6b772f90133354a75345021956a', 
  {
  	:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}



  }
end