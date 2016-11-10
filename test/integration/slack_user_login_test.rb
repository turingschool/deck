require 'test_helper'

class SlackUserLoginTest < ActionDispatch::IntegrationTest
  test "should sign in Slack user using single sign on" do
    visit root_path

    click_on "Sign in with Slack"


  end
end
