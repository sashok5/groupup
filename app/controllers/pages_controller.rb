class PagesController < ApplicationController

  $interest_images = Dir.glob("app/assets/images/interests/*.{gif,jpeg,png}")

  def home
    if signed_in?

      @your_interests =
      current_user.tags

      @events_for_you =
          Event.joins(:tags)
              .where('event_tags.tag_id': @your_interests.ids)


   else

     @upcoming_events =Event.upcoming.limit(10)
    end
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
