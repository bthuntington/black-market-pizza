class SessionsController < ApplicationController
  def new
  end
  
  def market
  @user = User.find(params[:id])
  end
  
  def create
    #user = User.find_by(name: params[:session][:name].downcase)
    user = User.find_by(name: params[:session][:name], password: params[:session][:password])
    
    #if user && user.authenticate(params[:session][:password])
    if user 
      #Log the user in and redirect to the user's show page
      #log_in user
      #redirect_to user
      render 'market'

      
    else
      #flash.now[:danger] = 'Invalid email/password combination'
       #Create an error message.
      render 'new'
      #render 'market'
    end
  

  end
  
end
