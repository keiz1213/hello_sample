FirebaseIdToken.configure do |config|
  config.redis = Redis.new(host: ENV['REDIS_HOST'], port: ENV['REDIS_PORT'])
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
