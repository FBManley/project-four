class UsersController < ApplicationController
    # /signup
    def create 
        @user = User.new(user_params)
        if @user.save 
            render json: @user, status: :created
        else 
            render json: { errors: @user.erros.full_messages }, status: :unprocessable_entity
        end
    end
    def show 
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
