class EventsController < ApplicationController
  def index
    @events = Event.all
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {event: event})
      }
    end
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
