class Event < ApplicationRecord
  validates :title, presence: true

  scope :is_available, -> {
    select('id, title, start_at as start, finish_at as end, all_day as allDay')
    .where(disp_flg: true)
  }
end
