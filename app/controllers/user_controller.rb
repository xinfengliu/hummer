class UserController < ApplicationController
  before_filter :login_required

  def timeline
     @user_name = params[:user_name]
     url = '/statuses/user_timeline/'+ @user_name 
     get_timeline(url)
  end

  def favorites
     @user_name = params[:user_name]
     url = '/favorites/'+ @user_name 
     get_timeline(url)
  end
end
