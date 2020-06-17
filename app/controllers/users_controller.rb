class UsersController < ApplicationController
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.user_id)
            render json: {user: UserSerializer.new(@user), jwt: @token}, status: :created
        else
            render json: {error: "Was unable to create user"}, status: :not_acceptable
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :email)
    end

end