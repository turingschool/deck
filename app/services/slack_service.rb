class SlackService

  attr_reader :slack_code

  def initialize(slack_code)
    @slack_code = slack_code
  end

  def fetch_user_info_from_slack
    Slack.oauth_access({:client_id => ENV['SLACK_APP_ID'], :client_secret => ENV['SLACK_APP_SECRET'], :code => @slack_code})
  end

  def slack_user_attrs
    SlackUser.new(fetch_user_info_from_slack(slack_code))
  end
  
end
