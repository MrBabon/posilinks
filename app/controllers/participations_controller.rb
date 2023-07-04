class ParticipationsController < ApplicationController
  before_action :set_event, only: :create

  def create
    @participation = Participation.new(event_params)
    # @participation.event = @event
    @participation.user = current_user
    @participation.save
    redirect_to event_path(@event)
  end

  private

  def event_params
    params.require(:event).permit(:event_id)
  end

  def set_event
    @event = Event.find(event_params[:event_id])
  end
end
