class ApplicationController < ActionController::Base
    def admin_loggedin?
        if session[:admin].nil?
          flash[:notice]="You need to login in admin"
          redirect_to :controller=>:admin,:action=>:login
        end
      end
    def update_log
        logger.info"A record has been deleted ....."
    end
end
