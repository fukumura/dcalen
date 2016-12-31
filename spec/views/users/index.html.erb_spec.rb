require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "fukumura1",
        :email => "fukumura.akinori+dcalen1@gmail.com",
        :password => "testtest"
      ),
      User.create!(
        :name => "fukumura1",
        :email => "fukumura.akinori+dcalen2@gmail.com",
        :password => "testtest"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "fukumura1".to_s, :count => 2
    assert_select "tr>td", :text => "fukumura.akinori+dcalen1@gmail.com".to_s
    assert_select "tr>td", :text => "fukumura.akinori+dcalen2@gmail.com".to_s
  end
end
