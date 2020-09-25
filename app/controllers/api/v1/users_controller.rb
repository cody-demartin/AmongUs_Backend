require 'byebug'

class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index 
        users = User.all
        render json: users
    end 

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(username: params[:username], password: params[:password], avatar: params[:avatar], discord: params[:discord] )
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else 
            render json: { error: 'failed to create' }, status: :not_acceptable
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :avatar, :discord)
    end
end
