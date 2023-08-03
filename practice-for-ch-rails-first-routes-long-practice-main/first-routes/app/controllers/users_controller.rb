# app/controllers/users_controller.rb

class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy 
    end 

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_url(@user.id)
        else 
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end 
    end 

    def show
        @user = User.find(params[:id])
        render json: @user 
    end

    def create 
        @user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if @user.save
            redirect_to user_url(@user.id)
        else 
            render json: @user.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end