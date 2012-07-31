class HomeController < ApplicationController
    before_filter :login_required
 
   #layout "master"
  
   def timeline
     url = '/statuses/home_timeline'
     get_timeline(url)
   end

   def create
      respond_to do |format|
        begin
         @tweet = current_user.twitter.post!(params[:status])
         format.html { redirect_to :action => "timeline" }
         #format.js
        rescue
         flash[:notice] = "Hoops, somthing went wrong!\n please try again in a mintue."
         format.html { redirect_to root_url }
        end
      end
   end
end
