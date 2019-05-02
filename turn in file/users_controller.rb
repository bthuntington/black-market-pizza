# controls users
class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def edit
      @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:name][:password][:balance => 0])
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end


end
