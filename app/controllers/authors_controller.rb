class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    #binding.pry
    if (@author = Author.create!(author_params)).valid?
    #binding.pry
      redirect_to author_path(@author)
    else
      render :new
    end
    
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
