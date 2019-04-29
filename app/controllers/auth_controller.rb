class AuthController < ApplicationController
    SECRET = "thesecret"

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            ## then do whatever to log them in
            ## generate token that contains a user id
            token = JWT.encode({user_id: @user.id}, SECRET, 'HS256')
            render json: { token: token, name: @user.name, username: @user.username }, status: :ok 
        else
            render json: { errors: "Couldn't log in" }
            status: :unauthorized
    end 
end
