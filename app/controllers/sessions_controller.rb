class SessionsController < ApplicationController

    def new
    end

    def create
        if params[:user][:name].blank? || params[:user][:password].blank?
            redirect_to users_login_path
        else
            @user = User.find_by(name: params[:user][:name])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to users_path
            else
                redirect_to users_login_path
            end
        end
    end
end