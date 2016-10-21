OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '770724359734982', '9cf9fa305759bfc1dd90d7dbec90167e'
end
