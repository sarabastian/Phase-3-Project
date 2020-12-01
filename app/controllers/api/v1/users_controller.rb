class Api::V1::UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: user, status: :accepted
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :name)
    end
end
