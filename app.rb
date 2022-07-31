require 'slack-ruby-client'

Slack.configure do |conf|
  conf.token = ENV['SLACK_BOT_TOKEN']
end

def post_to_slack(event:, context:)
  client = Slack::Web::Client.new
  client.chat_postMessage(channel: ENV['SLACK_CHANNEL_NAME'], text: 'リマインドです！そろそろタスク報告しましょう！', as_user: true)
end