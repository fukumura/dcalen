require 'rails_helper'

RSpec.describe Event do
  describe "Event be valid" do
    it { expect(build(:event)).to be_valid }
  end
  specify "titleは必須" do
    event = build(:event)
    expect(event).to be_valid
  end
  specify "titleは必須" do
    event = build(:event, :blunk_title)
    expect(event).not_to be_valid
    expect(event.errors[:title]).to be_present
  end
end
