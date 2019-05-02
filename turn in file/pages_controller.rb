# controleles the pages for the majority of our app
# stub methods are necessary for compilation
class PagesController < ApplicationController

    def market
        # gets username and password from the create user file and inputs them as paramaters
        @user = User.new(:name => params[:session][:name], :password => params[:session][:password])
        
        if @user.save
            puts "success"
        else
            puts "failure"
        end
    end
    def show
        @user = User.first
    end
    def create_user
    end
    
    def new
    end
    
    def login
    end
  
    
end
