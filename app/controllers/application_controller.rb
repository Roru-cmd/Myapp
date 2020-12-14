class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user  
      #debugger
      @current_user ||= User.find(@task[:user_id])
      
    end
end
 
