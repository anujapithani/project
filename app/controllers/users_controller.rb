class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice]="Signup successful"
    else
      Rails.logger.info @user.errors.full_messages
      flash[:notice]= @user.errors.full_messages
      redirect_to '/signup'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:user_name, :email, :password)
    end
end
