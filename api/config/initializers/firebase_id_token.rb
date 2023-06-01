FirebaseIdToken.configure do |config|
  config.redis = Redis.new(host: 'fly-hello-sample-redis.upstash.io', port: 36677, password: '36e7bded575e49c3b126e56339fa13a8')
  # config.redis = Redis.new(host: ENV['REDIS_URL'], port: 6379)
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
