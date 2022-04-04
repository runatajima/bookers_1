class BooksController < ApplicationController
  def new
      @book =Book.new
       @book =Book.all
      @book = Book.find(params[:id])  
  end
  
  def create
      book = Book.new(book_prams)
      book.save
       redirect_to '/top'
  end
  def index
    
      @book =Book.all
  end

  def show
    @book = Book.find(params[:id])  
  end

  def edit
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
