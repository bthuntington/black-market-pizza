class PagesController < ApplicationController
    def login
    end
    def market
    end
    def show
        @user = User.first
    end
    def create_user
    end
    
end
