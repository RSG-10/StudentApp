class AdminController < ApplicationController
    skip_before_action :verify_authenticity_token
    def login
        if request.post?
          if params[:username]=='admin' && params[:password]=='admin'
            p "Within Iffff"
            session[:admin]="admin"
            redirect_to :controller=>:studmarks
          else
            flash[:notice]="invalid admin credentials"
            p "Within ELSE"
            # render :action=>:login
          end
        end
      end
      def logout 
        session[:admin] = nil
        flash[:notice]="you are logout...."
        redirect_to :controller=>:admin,:action=>:login
        end
end
