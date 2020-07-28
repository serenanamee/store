class BooksController < ApplicationController

before_action :find_book, only: [:show, :edit, :update, :destroy]

def index
  @books = Book.all
  
end

def new
  @book = Book.new
  
end

def create
  @book = Book.new(book_params)
  if @book.save
    redirect_to root_path
  else
    render :new
  end
end

def edit
  
end

def upadte

  if @book.update(book_params)
     redirect_to root_path
  else
     render :edit    
  end
end

def show
  
end

def destroy
  @book.destroy
  redirect_to root_path
end


private

def book_params
    params.require(:book).permit(:title, :description, :publish_date)
end

def find_book
   @book = Book.find(params[:id])
end


end
