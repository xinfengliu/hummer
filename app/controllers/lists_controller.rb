class ListsController < ApplicationController
  before_filter :login_required

  def index
     @user_name = params[:user_name]
     url = '/'+ @user_name + '/lists'
     @lists = ( current_user.twitter.get(url) )['lists']
     logger.info "#{@lists.inspect}"
  end

  def timeline
     #logger.info "#{request.env.inspect}"
     logger.info "#{request.env["HTTP_USER_AGENT"].inspect}"
     @user_name = params[:user_name]
     @list_name = params[:list_name]
     #url = '/'+ @user_name + '/lists/' + @list_name + '/statuses'
     url = '/lists/statuses.json'
     #get_timeline(url)
     
     page_no = params[:page_no] || 1
     query_str = '?' + 'slug=' + @list_name + '&owner_screen_name=' + @user_name + '&page=' + page_no.to_s
     #logger.info (url + query_str)
     @tweets = current_user.twitter.get(url + query_str)
     @page_no = page_no.to_i + 1
  end

end
