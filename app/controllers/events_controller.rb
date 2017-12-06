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

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      render action: 'new'
    end
  end

  def destroy
    @event.destroy
    redirect_to root_url
  end

  private

    def event_params
      params.require(:event).permit(:title, :desc, :event_host)
    end

end
