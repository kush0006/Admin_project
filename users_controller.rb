class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:alert] = "User data updated successfully..."
      redirect_to(admin_users_path(@user))
    else
      flash[:alert] = "User data not updated!"
      render :edit
    end
  end
  

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :about, :email)
    end


end