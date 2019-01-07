class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new

  end

  def create
    @book = Book.new(book_params)
    puts @book.valid?
    if @book.valid?
      @book.save
      redirect_to @book
    else
      redirect_to '/books/new'
    end
  end

  private def book_params
    params.require(:book).permit(:title, :author)
  end

end
