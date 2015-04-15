if ENV['RACK_ENV'] !='production'
  require 'dotenv'
  Dotenv.load
end

Lita.configure do |config|
  config.robot.name       = ENV["BOT_NAME"] || 'lita'
  config.robot.adapter    = ENV["ADAPTER"] ? ENV["ADAPTER"].to_sym : :shell
  config.robot.log_level  = :info

  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"] || 3456


  config.adapters.twitter.api_key             = ENV['API_KEY']
  config.adapters.twitter.api_secret          = ENV['API_SECRET']
  config.adapters.twitter.access_token        = ENV['ACCESS_TOKEN']
  config.adapters.twitter.access_token_secret = ENV['ACCESS_TOKEN_SECRET']

  config.handlers.schedules.room              = 1
  config.handlers.schedules.should_sleep_at   = '0 0 * * * Asia/Tokyo'
  config.handlers.schedules.should_wake_up_at = '0 8 * * * Asia/Tokyo'

  config.handlers.talk.docomo_api_key      = ENV['DOCOMO_API_KEY']
  config.handlers.talk.docomo_character_id = 20
end
