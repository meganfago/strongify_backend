class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: :ok
    end 

    def show
        @user = User.find(params[:id])
        rneder json: @user, status: :ok
    end 

    def create
        @user = User.create(user_params)
        if @user
            render json: @user, status: :ok
        else
            render json: {errors: @user.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)
    end 

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end 

    private 

    def user_params 
        params.permit(:username, :name, :email)
    end

end
