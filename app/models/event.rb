class Event < ApplicationRecord
  validates :title, presence: true
  class << self
    def doing
      Time.current.between?(start, `end`)
    end
  end
end
