require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User be valid" do
    it { expect(build(:user)).to be_valid }
  end
  specify "nameは必須" do
    user = build(:user, :blunk_name)
    expect(user).not_to be_valid
    expect(user.errors[:name]).to be_present
  end
  specify "emailは必須" do
    user = build(:user, :blunk_email)
    expect(user).not_to be_valid
    expect(user.errors[:email]).to be_present
  end
end
