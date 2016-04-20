class SessionsController < ApplicationController

  def new
  end
  def create
    @currUser = User.find_by_email(params[:email])
    puts @currUser.inspect
    if @currUser.password_digest && @currUser.authenticate(params[:password])
      session[:user_id] = @currUser.id
      redirect_to @currUser
    else
      flash[:errors] = @currUser.errors.full_messages
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end
end
