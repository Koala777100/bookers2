class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    @user.id = current_user.id
    if @user.save
      redirect_to user_path, notice:"Welcome! You have signed up successfully."
    end
  end

  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id), notice:"You have updated user successfully."
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :introduction)
  end

end