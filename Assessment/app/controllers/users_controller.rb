class UsersController < ApplicationController
    
    def index
    end
    
    def create
        user = User.new(user_params)
        
        user.save
        
        redirect_to "/users"
       
    end
    
private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :username, :about_me)
    end
end
