require 'test_helper'

class SlackServiceTest < ActiveSupport::TestCase

  teardown do
    Timecop.return
  end

  test "stores Slack code upon creation" do
    ss = SlackService.new("slack code")

    assert_equal "slack code", ss.slack_code
  end

  test "fetches user information from slack" do
    ss = SlackService.new("slack code")
    response = ss.fetch_user_info_from_slack

    assert_kind_of Hash, response
  end

  test "saves slack user attributes in a slack user object" do
    skip
  end
end
