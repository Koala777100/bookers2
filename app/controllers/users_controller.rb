class UsersController < ApplicationController
  def new

  end

  def create
    @user = User.new(user_params)
    @user.id = current_user.id
    @user.save
    redirect_to user_path
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end