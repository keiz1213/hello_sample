FirebaseIdToken.configure do |config|
  config.redis = Redis.new(url: 'redis://default:36e7bded575e49c3b126e56339fa13a8@fly-hello-sample-redis.upstash.io:36677')
  # config.redis = Redis.new(host: ENV['REDIS_URL'], port: 6379)
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
