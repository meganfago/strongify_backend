class AuthController < ApplicationController

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            ## then do whatever to log them in
            ## generate token that contains a user id
            token = JWT.encode({userId: @user.id}, ENV['SECRET'], 'HS256')
            render json: {token: token, username: @user.username, name: @user.name, id: @user.id}, status: :ok 
        else
            render json: { error: "Couldn't log in" }, status: :unauthorized
        end 
    end
end 
