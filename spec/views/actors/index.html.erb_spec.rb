require 'spec_helper'

describe "actors/index" do
  before(:each) do
    assign(:actors, [
      stub_model(Actor,
        :name_en => "Name En",
        :name_zh => "Name Zh",
        :location_id => 1
      ),
      stub_model(Actor,
        :name_en => "Name En",
        :name_zh => "Name Zh",
        :location_id => 1
      )
    ])
  end

  it "renders a list of actors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Zh".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
