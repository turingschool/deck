class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to :root
  end

  def new

  end

  def create
    if params["code"]
      SlackService.new(params["code"])
    else
      byebug
    end
  end


end
