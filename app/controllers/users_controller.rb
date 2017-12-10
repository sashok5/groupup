class UsersController < ApplicationController
  before_action :signed_in_user,
                only: [:index, :edit, :update, :update_interests, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update, :update_interests]
  before_action :admin_user,     only: :destroy

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events.paginate(page: params[:page])
    #@event_posts = @user.event_posts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Group Up!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def update_interests

    @tag_params = tag_params["tag_ids"].reject!{|a| a==""}
    if @user.update_attribute(:tag_ids, @tag_params )
      flash[:success] = "Interests updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:user_id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  def attending
    @title = "Attending"
    @user = User.find(params[:id])
    @events = @user.events_attending
  end

  def created_events

    @user = User.find(params[:id])
    @events = @user.created_events.paginate(page: params[:page])

  end

  def attending_events

    @user = User.find(params[:id])
    @events = @user.events

  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, tag_ids: [])
    end

  def tag_params
    params.require(:user).permit(tag_ids: [])
  end

    # Before filters

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  end
