class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    favorite.save
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
    redirect_to book_path(@book)
  end


  private

  def favorite_params
    params.require(:favorite).permit(:book_id, :user_id, :created_at, :updated_at)
  end
end
