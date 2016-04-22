class UsersController < ApplicationController
  def index
    @users = User.where.not(id:session[:id])
  end

  def new
  end

  def show
    @user = User.find(session[:id])
    @networks = Network.where(user_id:session[:id])
    @invites = Invitation.where(invitee_id:session[:id])
  end

  def destroy
  end

  def edit
    @user = User.find(session[:id])
  end

  def create
    @user = User.create(name:params[:name], email:params[:email], password:params[:password], description:params[:description])
    if @user
      session[:id] = @user.id
      @profile = Profile.create(user_id:session[:id])
      redirect_to @user
    else
      redirect_to '/'
    end
  end
  def update
    if Location.find_by_city(params[:city]) && Location.find_by_state(params[:state])
      @userLoc = Location.find_by_city(params[:city])
    else
      @userLoc = Location.create(city:params[:city], state:params[:state])
    end
    @upUser = User.update(session[:id], first_name:params[:first_name], last_name:params[:last_name], email:params[:email], location_id:@userLoc.id)
    if @upUser
      puts @upUser.errors.full_messages
      redirect_to @upUser
    else
      puts @upUser.errors.full_messages
      redirect_to @upUser
    end
  end
end
