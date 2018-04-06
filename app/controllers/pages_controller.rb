class PagesController < ApplicationController

  def home
    if signed_in?
      @your_interests = current_user.tags
      return unless @your_interests.any?
      @events_for_you = Event.joins(:tags)
                            .where('event_tags.tag_id' => @your_interests.ids)
                            .order('events.event_date ASC')
                            .distinct
    else
      @upcoming_events = Event.upcoming.limit(2)
      @popular_events = Popular.events
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
