class ProfilesController < ApplicationController
  def index
    @user = User.find(session[:id])
    @networks = Network.where(user_id:session[:id])
    @invites = Invitation.where(invitee_id:session[:id])
  end

  def new
    @profile = Profile.where(user_id:session[:id])
    if Invitation.user_invitee_unique?(session[:id], params[:id])
      @newInvite = Invitation.create(user_id:session[:id], invitee_id:params[:id], profile_id:@profile[0].id)
      if @newInvite
        puts @newInvite.inspect, 'new'
        redirect_to 'index'
      else
        redirect_to '/users'
      end
    end
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
