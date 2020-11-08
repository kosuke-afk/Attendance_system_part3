class UsersController < ApplicationController
 
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params_user)
    if @user.save
    else
      render :new
    end
  end
  
  private
    def params_user
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
