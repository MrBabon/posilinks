class OrganizationsController < ApplicationController
  def index
    if params[:query]
      @organizations = Organization.search_by_organization(params[:query])
    else
      @organizations = Organization.all
      # @events = Event.all --> en phase de test pour appeler les event sur index organization
    end
    params[:query] = ""

  end

  def show
      @organization = Organization.find(params[:id])
      @events = @organization.events
      @markers = @events.geocoded.map do |event|
        {
          lat: event.latitude,
          lng: event.longitude,
          info_window_html: render_to_string(partial: "info_window", locals: {event: event})
        }
      end
  end

  def new
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
