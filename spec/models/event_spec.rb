require 'rails_helper'

RSpec.describe Event do
  specify "titleは必須" do
    event = build(:event, :blunk_title)
    expect(event).not_to be_valid
    expect(event.errors[:title]).to be_present
  end
end
