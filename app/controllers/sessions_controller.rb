class SessionsController < ApplicationController
    def login
        @users = User.all
    end

    def create
        @user = User.find(params[:user_id])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            # errors?
            render :login
        end
    end

    def logout
        session.clear
        redirect_to root_path
    end
end
