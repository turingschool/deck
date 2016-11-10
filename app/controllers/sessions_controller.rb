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
      slack_user = SlackUser.new(user_info)

      if user = User.from_omniauth(slack_user)
        session[:user_id] = user.id
      end
      redirect_to user_tickets_path(user)

    else
      byebug
    end
  end


end
