# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include TwitterAuth::ControllerExtensions
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  #filter_parameter_logging :password

  protected 
  def get_timeline(url)
    page_no = params[:page_no] || 1
    query_str = '?' + 'page=' + page_no.to_s
    #logger.info (url + query_str)
    @tweets = current_user.twitter.get(url + query_str)
    #logger.info (@tweets)
    @page_no = page_no.to_i + 1 
  end
end
