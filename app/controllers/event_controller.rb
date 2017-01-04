class EventController < ApplicationController
  def show
    @event = Event.for_fullcalendar.is_disp
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:id, :title, :start, :end, :allDay]
        )
      }
    end
  end

  def create
    event = Event.new
    event.attributes = {
      user_id: current_user.id,
      title: params[:title],
      start_at: params[:start_at],
      finish_at: params[:finish_at],
    }
    event.save
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:id, :title, :start, :end]
        )
      }
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.attributes = {
      title: params[:title],
      start_at: params[:start_at],
      finish_at: params[:finish_at],
    }
    @event.save
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:id, :title, :start, :end]
        )
      }
    end
  end
end
