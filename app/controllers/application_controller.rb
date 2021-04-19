class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user  
      #debugger
      @current_user ||= User.find(@task[:user_id])
      #@current_user = User.find_by(id: session[:user_id])
      #@current_user = User.find_by(params[:id])
    end
end
 
