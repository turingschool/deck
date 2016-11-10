class SlackService

  def initialize(slack_code)
    fetch_user_info_from_slack(slack_code)
  end

  def fetch_user_info_from_slack(code)
    Slack.oauth_access({:client_id => ENV['SLACK_APP_ID'], :client_secret => ENV['SLACK_APP_SECRET'], :code => code})
  end
end
