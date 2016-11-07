class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

  def new

  end

  def create
    if params["code"]
      render :text => fetch_user_info_from_slack
    else
      byebug
    end
  end

  def fetch_user_info_from_slack
    Slack.oauth_access({:client_id => ENV['SLACK_APP_ID'], :client_secret => ENV['SLACK_APP_SECRET'], :code => params["code"]})
  end
end
