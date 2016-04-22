class ProfilesController < ApplicationController
  def index
    @user = User.find(session[:id])
  end

  def new
    @profile = Profile.where(user_id:session[:id])
    puts @profile[0].id, 'profile data'
    @newInvite = Invitation.create(user_id:session[:id], invitee_id:params[:id], profile_id:@profile[0].id)
    redirect_to '/users/session[:id]'
  end

  def show
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
