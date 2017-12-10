class PagesController < ApplicationController

  $interest_images = Dir.glob("app/assets/images/interests/*.{gif,jpeg,png}")

  def home
    if signed_in?
      #@myevents  = current_user.events.build
      #@feed_items = current_user.feed.paginate(page: params[:page])
    end
  @upcoming_events =Event.upcoming
  end

  def help
  end

  def about
  end

  def contact
  end

  def donate
    if request.post?
      flash[:success] = "Thank you for your donation!"
      redirect_to root_path
    end

  end

end
