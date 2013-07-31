OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1400231680196850', 'd1be6503cc3239d814a200f2c22f8ab3',
  		   :scope => 'email,user_birthday,read_stream'
  		end

