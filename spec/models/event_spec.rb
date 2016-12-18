require 'rails_helper'

RSpec.describe Event, type: :model do
  specify "titleは必須" do
    event = Event.new(
      id: 1, user_id: 1, title: '', start: '2016-12-01 00:00:00'
    )
    expect(event).not_to be_valid
    expect(event.errors[:title]).to be_present
  end
end
