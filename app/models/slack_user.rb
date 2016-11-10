class SlackUser
  attr_reader :access_token,
              :name,
              :slack_id,
              :email_address,
              :user_image

  def initialize(slack_user_info)
    @access_token  = slack_user_info["access_token"]
    @name          = slack_user_info["user"]["name"]
    @slack_id      = slack_user_info["user"]["id"]
    @email_address = slack_user_info["user"]["email"]
    @user_image    = slack_user_info["user"]["image_512"]
  end
end
