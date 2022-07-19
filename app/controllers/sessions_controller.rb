class SessionsController < ApplicationController
    def create
      Rails.logger.info params
      user = User.find_by_user_name(params[:name])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice]="Login successful"

        if user.admin==true
          redirect_to "/products/new"
        else
          redirect_to "/shopping"
        end
        
      else
        flash[:notice]="Invalid Email or Password"
        redirect_to '/login'
      end
    end
    
    def destroy
      session[:user_id] = nil
      flash[:notice]="Logged Out"
      redirect_to '/login'
    end
end
