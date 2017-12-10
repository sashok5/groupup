class PagesController < ApplicationController

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
end
