class EventController < ApplicationController
  def events
    @event = Event.all
    # render :json => @event
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:title, :start, :end]
        )
      }
    end
  end
end
