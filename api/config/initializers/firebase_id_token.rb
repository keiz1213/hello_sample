FirebaseIdToken.configure do |config|
  config.redis = Redis.new(url: '127.0.0.1:16379')
  # config.redis = Redis.new(host: ENV['REDIS_URL'], port: 6379)
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
