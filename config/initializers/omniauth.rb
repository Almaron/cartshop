Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '634d07a210bac911a794', '0863c9059792cb22e07c2ce99a88e4316da8e5f6'
end