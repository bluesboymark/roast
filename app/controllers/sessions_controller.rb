class SessionsController < ApplicationController
  def new
  end

  def create
      @user = User.find_by(email: params[:login][:email])
      if @user && @user.authenticate(params[:login][:password])
        session[:user_id] = @user.id.to_s
        redirect_to root_path
      else
        render :new
      end
    end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
