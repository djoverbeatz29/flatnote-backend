class AuthController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = encode_token(user_id: @user.id)
            # render json: {user: UserSerializer.new(@user), jwt: token}
            render json: {id: user.id, username: user.username}
        else
            render json: {error: "Invalid username and/or password."}
        end
    end

    private
    def params
        params.require(:user).permit(:username, :password)
    end

end