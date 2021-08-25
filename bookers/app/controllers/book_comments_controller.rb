class BookCommentsController < ApplicationController
  
  def create
    @book = book.find(params[:id])
  end
  
  def destroy
    
  end
  
end
