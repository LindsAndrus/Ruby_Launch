class SessionsController < ApplicationController
  def index
  end
  def new
  end
  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
      redirect_to '/profiles'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
