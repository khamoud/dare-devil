OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '204435876382772', '95282e4553f7918755fca545a62b8005',{:client_options => {:ssl => {:verify => false}}}
end

