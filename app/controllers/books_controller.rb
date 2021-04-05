class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.id = current_user.id
    @book.save
    redirect_to book_path(current_user.id)
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :profile_image, :body)
  end

end
