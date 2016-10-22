require 'rails_helper'

RSpec.describe "businesses/index", type: :view do
  before(:each) do
    assign(:businesses, [
      Business.create!(
        :name => "Name",
        :description => "MyText",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :location => "Location",
        :user => nil,
        :latitude => 2.5,
        :longitude => 3.5
      ),
      Business.create!(
        :name => "Name",
        :description => "MyText",
        :email => "Email",
        :phone => "Phone",
        :address => "Address",
        :location => "Location",
        :user => nil,
        :latitude => 2.5,
        :longitude => 3.5
      )
    ])
  end

  it "renders a list of businesses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
