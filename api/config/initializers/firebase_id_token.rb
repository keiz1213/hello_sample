FirebaseIdToken.configure do |config|
  config.redis = Redis.new(host: ENV['REDIS_HOST'])
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
