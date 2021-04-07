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
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
    unless @user.id == current_user.id
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice:"You have updated user successfully."
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end