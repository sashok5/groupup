class EventsController < ApplicationController

  def index
    @events = Event.paginate(page: params[:page])
  end

  def userevents
    @events = @event = current_user.events.paginate(page: params[:page])
  end

  def attending

  end

  def upcoming
    @events = Event.upcoming.paginate(page: params[:page])
  end

  def past_events

  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      #@feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @event.destroy
    redirect_to root_url
  end

  private

    def event_params
      params.require(:event).permit(:desc)
    end

    def correct_user
      @event = current_user.events.find_by(id: params[:id])
      redirect_to root_url if @event.nil?
    end
end
