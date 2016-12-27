class Event < ApplicationRecord
  validates :title, presence: true

  scope :for_fullcalendar, -> {
    select('id, title, start_at as start, finish_at as end, all_day as allDay')
  }
  scope :is_disp, -> { where(disp_flg: true) }

  def available?(event_id)
    event = Event.find(event_id)
    event.disp_flg
  end
end
