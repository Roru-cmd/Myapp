class ApplicationController < ActionController::Base

  helper_method :recent_task
    def recent_task
      @recent_task = Task.recent
    end
end
 
