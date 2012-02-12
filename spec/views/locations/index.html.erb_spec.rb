require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name_en => "Name En",
        :name_zh => "Name Zh"
      ),
      stub_model(Location,
        :name_en => "Name En",
        :name_zh => "Name Zh"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Zh".to_s, :count => 2
  end
end
