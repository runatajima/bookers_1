class HomesController < ApplicationController
  
  def new
  end      

  def index
    
  end

  def show
   @book =Book.all
  end

  def edit
  end
end
