class PagesController < ApplicationController
    def login
    end
    def market
      
        #@user = User.new(params[:name], params[:password])
        #@user = User.new(user_params)
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
  
    
end
