Lita.configure do |config|
  config.robot.name       = ENV["BOT_NAME"] || 'lita'
  config.robot.adapter    = ENV["ADAPTER"] ? ENV["ADAPTER"].to_sym : :shell
  config.robot.log_level  = :info

  config.redis.url = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  config.adapter.api_key             = ENV['API_KEY']
  config.adapter.api_secret          = ENV['API_SECRET']
  config.adapter.access_token        = ENV['ACCESS_TOKEN']
  config.adapter.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end
