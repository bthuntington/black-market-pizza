
# controles user login
class SessionsController < ApplicationController
  def new
  end
  
  def market
  @user = User.find(params[:id])
  end
  
  def create
    # true for valid username and password combos
    user = User.find_by(name: params[:session][:name], password: params[:session][:password])
    if user 
      # renders market page
      render 'market'
    else
      # renders invalid user page
      render 'new'
    end
  end
  
end
