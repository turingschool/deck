require 'test_helper'

class SlackUserTest < ActiveSupport::TestCase

  teardown do
    Timecop.return
  end

  test 'should return expected Slack user attributes' do
    slack_user = SlackUser.new("access_token" => "xxx",
                  "user" => {"name" => "Jasmin",
                             "id" => "123",
                             "email" => "jasmin@test.com",
                             "image_512" => "www"}
                             )

    assert_equal 'xxx', slack_user.access_token
    assert_equal 'Jasmin', slack_user.name
    assert_equal '123', slack_user.slack_id
    assert_equal 'jasmin@test.com', slack_user.email_address
    assert_equal 'www', slack_user.user_image
  end

end
