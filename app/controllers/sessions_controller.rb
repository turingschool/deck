class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

  def new

  end

  def create
    if params["code"]
      slack_user_access = SlackService.new(params["code"])
      user_info = slack_user_access.fetch_user_info_from_slack
      user = SlackUser.new(user_info)

      session[:user_id] = 

      redirect_to user_tickets_path
    else
      byebug
    end
  end


end
