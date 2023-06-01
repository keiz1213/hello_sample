FirebaseIdToken.configure do |config|
  # config.redis = Redis.new(host: 'fly-hello-sample-redis.upstash.io', port: 36677, password: '36e7bded575e49c3b126e56339fa13a8')
  config.redis = Redis.new(url: 'redis://default:11254a05625f4cdbae6bf770c75b76d0@fly-hello-sample-redis.upstash.io')
  config.project_ids = [ENV['FIREBASE_PROJECT_ID']]
end
